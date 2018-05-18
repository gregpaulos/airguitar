//
//  rockinViewController.swift
//  airGuitarSamurai
//
//  Created by gregory paulos on 5/11/18.
//  Copyright © 2018 gregory paulos. All rights reserved.
//

import UIKit
import AVFoundation
import Vision

class rockinViewController: UIViewController, AVCaptureVideoDataOutputSampleBufferDelegate {
    
    var songName = ""
    
    let allSongs = Songs()
    
    var objPlayer: AVAudioPlayer?
    
    var multiplePlayersAtOnce = [AVAudioPlayer]()
    
    var notHandAfterHand = 0
    
    var chordCount = 0
    
    // video capture session
    let session = AVCaptureSession()
    // queue for processing video frames
    let captureQueue = DispatchQueue(label: "captureQueue")
    // preview layer
    var previewLayer: AVCaptureVideoPreviewLayer!
    // preview view - we'll add the previewLayer to this later
    
    // vision request
    var visionRequests = [VNRequest]()

    
    @IBAction func pressDismiss(_ sender: Any) {
        objPlayer?.stop()
        if multiplePlayersAtOnce.count > 0 {
            for player in multiplePlayersAtOnce {
                player.stop()
            }
        }
        session.stopRunning()
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var songNameLabel: UILabel!
    
    @IBOutlet weak var handsProbabilityLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        songNameLabel.text = songName
        
        guard let camera = AVCaptureDevice.default(.builtInWideAngleCamera, for: AVMediaType.video, position: .front) else {
            fatalError("No video camera available")
        }

        session.sessionPreset = .high

        // add the preview layer
        previewLayer = AVCaptureVideoPreviewLayer(session: session)

        // create the capture input and the video output
        guard let cameraInput = try? AVCaptureDeviceInput(device: camera) else {
            fatalError("Could not get camara up and running")
        }

        let videoOutput = AVCaptureVideoDataOutput()
        videoOutput.setSampleBufferDelegate(self as! AVCaptureVideoDataOutputSampleBufferDelegate, queue: captureQueue)
        videoOutput.alwaysDiscardsLateVideoFrames = true
        videoOutput.videoSettings = [kCVPixelBufferPixelFormatTypeKey as String: kCVPixelFormatType_32BGRA]

        // wire up the session
        session.addInput(cameraInput)
        session.addOutput(videoOutput)

        // make sure we are in portrait mode
        let conn = videoOutput.connection(with: .video)
        conn?.videoOrientation = .portrait

        // Start the session
        session.startRunning()

        guard let visionModel = try? VNCoreMLModel(for: secondHand().model) else {
            fatalError("Could not load model")
        }

        // set up the request using our vision model
        let classificationRequest = VNCoreMLRequest(model: visionModel, completionHandler: handleClassifications)

        classificationRequest.imageCropAndScaleOption = VNImageCropAndScaleOption.centerCrop

        visionRequests = [classificationRequest]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }

    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        guard let pixelBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else {
            return
        }
        var requestOptions:[VNImageOption: Any] = [:]

        if let cameraIntrinsicData = CMGetAttachment(sampleBuffer, kCMSampleBufferAttachmentKey_CameraIntrinsicMatrix, nil) {
            requestOptions = [.cameraIntrinsics: cameraIntrinsicData]
        }

        // for orientation see kCGImagePropertyOrientation
        let imageRequestHandler = VNImageRequestHandler(cvPixelBuffer: pixelBuffer, orientation: CGImagePropertyOrientation(rawValue: 1)!, options: requestOptions)
        do {
            try imageRequestHandler.perform(self.visionRequests)
        } catch {
            print(error)
        }
    }


    func handleClassifications(request: VNRequest, error: Error?) {
        if let theError = error {
            print("Error: \(theError.localizedDescription)")
            return
        }
        guard let observations = request.results else {
            print("No results")
            return
        }

        let classification = observations[0] as? VNClassificationObservation

        if let nonOptClassification = classification {

            let classificationText = "\(nonOptClassification.identifier) \(((nonOptClassification.confidence) * 100.0).rounded())"

            if nonOptClassification.identifier == "hands" && nonOptClassification.confidence > 0.80  && notHandAfterHand >= 30 {
                playChord()

            }
            if (nonOptClassification.identifier == "hands" && nonOptClassification.confidence < 0.50) || nonOptClassification.identifier != "hands" {
                notHandAfterHand += 1
            }

            DispatchQueue.main.async {
                self.handsProbabilityLabel.layer.zPosition = 1;
                self.handsProbabilityLabel.text = classificationText
            }

        }
        else {
            print("classification text didnt work")
        }

    }

    func playChord() {

        notHandAfterHand = 0
       
        guard var url = Bundle.main.url(forResource: "echord", withExtension: "wav") else { return }
        
        let songPattern = allSongs.dictOfSongs[songName]!.songPattern
        
        if chordCount >= songPattern.count {
            chordCount = 0
            url = songPattern[chordCount]
            chordCount += 1

        }
        else {
            url = songPattern[chordCount]
            chordCount += 1
        }
        
         // for first if block allow only one audio player (note) at a time, else allow multiple audio players at once
        if allSongs.dictOfSongs[songName]!.needsMultipleAudioPlayers == false{
            do {
                objPlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                objPlayer?.prepareToPlay()
                
                
                let audioSession = AVAudioSession.sharedInstance()
                do {
                    try audioSession.setCategory(AVAudioSessionCategoryPlayback)
                } catch let sessionError {
                    print(sessionError)
                }
                objPlayer?.play()
            } catch let error {
                print(error.localizedDescription)
            }
        } else {
            
            do {
                objPlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                objPlayer?.prepareToPlay()
                
                
                let audioSession = AVAudioSession.sharedInstance()
                do {
                    try audioSession.setCategory(AVAudioSessionCategoryPlayback)
                } catch let sessionError {
                    print(sessionError)
                }
                
                multiplePlayersAtOnce.append(objPlayer!)
                
                
                multiplePlayersAtOnce[multiplePlayersAtOnce.count-1].play()
                
                
            } catch let error {
                print(error.localizedDescription)
            }

        }
    }

}

