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
        
    @IBAction func pressDismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    var songName = ""
    
//    var objPlayer: AVAudioPlayer?
//
//        var multiplePlayersAtOnce = [AVAudioPlayer]()
//
//        var count: Int = 0
//
//        var notHandAfterHand = 0
//
//        var chordCount = 0
//
//        let practiceChords = [Bundle.main.url(forResource: "D power", withExtension: "mp3"), Bundle.main.url(forResource: "E power", withExtension: "mp3")]
//
//        let blackSabbath = [Bundle.main.url(forResource: "Sabbie1", withExtension: "mp3"), Bundle.main.url(forResource: "Sabbie2", withExtension: "mp3"), Bundle.main.url(forResource: "Sabbie3", withExtension: "mp3")]
//
//
//    let funky = [Bundle.main.url(forResource: "funkyLowE", withExtension: "mp3"), Bundle.main.url(forResource: "eminorwah", withExtension: "mp3"), Bundle.main.url(forResource: "funkyLowE", withExtension: "mp3"), Bundle.main.url(forResource: "dmajwah", withExtension: "mp3"), Bundle.main.url(forResource: "funkyLowE", withExtension: "mp3"),Bundle.main.url(forResource: "scratchy", withExtension: "mp3"),]
//
//     let welcome = [Bundle.main.url(forResource: "jungleopenfinal", withExtension: "mp3"), Bundle.main.url(forResource: "jungleopenfinal", withExtension: "mp3"), Bundle.main.url(forResource: "junglelickfinal", withExtension: "mp3"), Bundle.main.url(forResource: "junglelickfinal", withExtension: "mp3"), Bundle.main.url(forResource: "junglelickfinal", withExtension: "mp3"),Bundle.main.url(forResource: "junglelickfinal", withExtension: "mp3"),]
//
//         let weird = [Bundle.main.url(forResource: "weirdDroneLouder", withExtension: "mp3"), Bundle.main.url(forResource: "weirdnotes1", withExtension: "mp3"), Bundle.main.url(forResource: "weirdnotes2", withExtension: "mp3"), Bundle.main.url(forResource: "weirdnotes3", withExtension: "mp3"), Bundle.main.url(forResource: "soloChop1", withExtension: "mp3"),Bundle.main.url(forResource: "soloChop2", withExtension: "mp3"),Bundle.main.url(forResource: "soloChop3", withExtension: "mp3"),Bundle.main.url(forResource: "soloChop4", withExtension: "mp3"),Bundle.main.url(forResource: "soloChop5", withExtension: "mp3"),Bundle.main.url(forResource: "soloChop6", withExtension: "mp3"),Bundle.main.url(forResource: "soloChop7", withExtension: "mp3"),Bundle.main.url(forResource: "soloChop8", withExtension: "mp3"),Bundle.main.url(forResource: "soloChop9", withExtension: "mp3"),Bundle.main.url(forResource: "soloChop10", withExtension: "mp3"),Bundle.main.url(forResource: "soloChop11", withExtension: "mp3"),]
//
//
//    let solo = [Bundle.main.url(forResource: "eSolo1", withExtension: "mp3"), Bundle.main.url(forResource: "eSolo2", withExtension: "mp3"), Bundle.main.url(forResource: "eSolo1", withExtension: "mp3"), Bundle.main.url(forResource: "eSolo20", withExtension: "mp3"), Bundle.main.url(forResource: "eSolo1", withExtension: "mp3"), Bundle.main.url(forResource: "eSolo5", withExtension: "mp3"),Bundle.main.url(forResource: "eSolo7", withExtension: "mp3"),Bundle.main.url(forResource: "eSolo8", withExtension: "mp3")]
//
//        // video capture session
//        let session = AVCaptureSession()
//        // queue for processing video frames
//        let captureQueue = DispatchQueue(label: "captureQueue")
//        // preview layer
//        var previewLayer: AVCaptureVideoPreviewLayer!
//        // preview view - we'll add the previewLayer to this later
//
//
//
//
//    @IBOutlet weak var songTitle: UILabel!
//
//    @IBAction func chooseDifferentSongPressed(_ sender: UIButton) {
//        objPlayer?.stop()
//        if multiplePlayersAtOnce.count > 0 {
//            for player in multiplePlayersAtOnce {
//                player.stop()
//            }
//        }
//        session.stopRunning()
//        dismiss(animated: true, completion: nil)
//    }
//
//
//    @IBOutlet weak var resultView: UILabel!
//
//    // vision request
//    var visionRequests = [VNRequest]()
//
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("JUST GOT HERE")
        print(songName)
        
//        songTitle.text = songName
//DELETE THESE TWO CURLIES BEFORE DOING OTHER STUFF
        }
    }

        // Do any additional setup after loading the view.
        
//        guard let camera = AVCaptureDevice.default(.builtInWideAngleCamera, for: AVMediaType.video, position: .front) else {
//            fatalError("No video camera available")
//        }
//
//
//
//        session.sessionPreset = .high
//
//        // add the preview layer
//        previewLayer = AVCaptureVideoPreviewLayer(session: session)
////        previewView.layer.addSublayer(previewLayer)
//
//        // create the capture input and the video output
//        guard let cameraInput = try? AVCaptureDeviceInput(device: camera) else {
//            fatalError("Could not get camara up and running")
//        }
//
//        let videoOutput = AVCaptureVideoDataOutput()
//        videoOutput.setSampleBufferDelegate(self as! AVCaptureVideoDataOutputSampleBufferDelegate, queue: captureQueue)
//        videoOutput.alwaysDiscardsLateVideoFrames = true
//        videoOutput.videoSettings = [kCVPixelBufferPixelFormatTypeKey as String: kCVPixelFormatType_32BGRA]
//
//        // wire up the session
//        session.addInput(cameraInput)
//        session.addOutput(videoOutput)
//
//        // make sure we are in portrait mode
//        let conn = videoOutput.connection(with: .video)
//        conn?.videoOrientation = .portrait
//
//        // Start the session
//        session.startRunning()
//
//        // set up the vision model
//        //        guard let visionModel = try? VNCoreMLModel(for: Resnet50().model) else {
//        //            fatalError("Could not load model")
//        //        }
//
//        guard let visionModel = try? VNCoreMLModel(for: secondHand().model) else {
//            fatalError("Could not load model")
//        }
//
//        // set up the request using our vision model
//        let classificationRequest = VNCoreMLRequest(model: visionModel, completionHandler: handleClassifications)
//        //        classificationRequest.imageCropAndScaleOption = VNImageCropAndScaleOptionCenterCrop
//
//        //        classificationRequest.imageCropAndScaleOption = VNImageCropAndScaleOption.centerCrop(1)
//        classificationRequest.imageCropAndScaleOption = VNImageCropAndScaleOption.centerCrop
//
//        visionRequests = [classificationRequest]
//
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
////        previewLayer.frame = self.previewView.bounds;
//    }
//
//    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
//        guard let pixelBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else {
//            return
//        }
//        var requestOptions:[VNImageOption: Any] = [:]
//
//        if let cameraIntrinsicData = CMGetAttachment(sampleBuffer, kCMSampleBufferAttachmentKey_CameraIntrinsicMatrix, nil) {
//            requestOptions = [.cameraIntrinsics: cameraIntrinsicData]
//        }
//
//        // for orientation see kCGImagePropertyOrientation
//        let imageRequestHandler = VNImageRequestHandler(cvPixelBuffer: pixelBuffer, orientation: CGImagePropertyOrientation(rawValue: 1)!, options: requestOptions)
//        do {
//            try imageRequestHandler.perform(self.visionRequests)
//        } catch {
//            print(error)
//        }
//    }
//
//
//    func handleClassifications(request: VNRequest, error: Error?) {
//        if let theError = error {
//            print("Error: \(theError.localizedDescription)")
//            return
//        }
//        guard let observations = request.results else {
//            print("No results")
//            return
//        }
//        //        let classifications = observations[0...4] // top 4 results
//        //            .flatmap({ $0 as? VNClassificationObservation })
//        //            .map({ "\($0.identifier) \(($0.confidence * 100.0).rounded())" })
//        //            .joined(separator: "\n")
//
//        let classification = observations[0] as? VNClassificationObservation
//
//
//        //        let classificationText = "\(classification?.identifier) \(((classification?.confidence)! * 100.0).rounded())"
//        //
//        //        print("CLASSIFICATION")
//        //        print(classification)
//        //        print(classificationText)
//        //
//        //
//        //        DispatchQueue.main.async {
//        //            self.resultView.layer.zPosition = 1;
//        //            self.resultView.text = classificationText
//        //        }
//
//
//        if let nonOptClassification = classification {
//
//            let classificationText = "\(nonOptClassification.identifier) \(((nonOptClassification.confidence) * 100.0).rounded())"
//
//            //            print("CLASSIFICATION")
//            //            print(nonOptClassification)
//            //            print(classificationText)
//            //
//
//            if nonOptClassification.identifier == "hands" && nonOptClassification.confidence > 0.80  && notHandAfterHand >= 30 {
//                playChord()
//
//            }
//
//            //            perhaps drop this to less then 80
//            if (nonOptClassification.identifier == "hands" && nonOptClassification.confidence < 0.50) || nonOptClassification.identifier != "hands" {
//                notHandAfterHand += 1
////                print("Not Hand Count:", notHandAfterHand)
//            }
//
//            DispatchQueue.main.async {
//                self.resultView.layer.zPosition = 1;
//                self.resultView.text = classificationText
//            }
//
//        }
//        else {
//            print("classification text didnt work")
//        }
//
//    }
//
//    func playChord() {
//
//        notHandAfterHand = 0
//        print("YES MOTHAS! \(count)")
////        guard let url = Bundle.main.url(forResource: "echord", withExtension: "wav") else { return }
//        // for first if block allow multiple audio players at once, else allow only one at a time
//        if songName == "SOLO!!!!!!!" || songName == "FUNK N' STUFF" || songName == "WELCOME JUNGLE" || songName == "GET WEIRD" {
//
//            guard var url = Bundle.main.url(forResource: "Sabbie1", withExtension: "mp3") else { return }
//
//            if songName == "SOLO!!!!!!!" {
//                if chordCount >= solo.count {
//                    chordCount = 0
//                    url = solo[chordCount]!
//                    print(chordCount)
//                    chordCount += 1
//
//                }
//                else {
//                    url = solo[chordCount]!
//                    print(chordCount)
//                    chordCount += 1
//                }
//
//            } else if songName == "FUNK N' STUFF" {
//                print("FUNK")
//                if chordCount >= funky.count {
//                    chordCount = 0
//                    url = funky[chordCount]!
//                    print(chordCount)
//                    chordCount += 1
//
//                }
//                else {
//                    url = funky[chordCount]!
//                    print(chordCount)
//                    chordCount += 1
//                }
//            } else if songName == "WELCOME JUNGLE" {
//                if chordCount >= welcome.count {
//                    chordCount = 0
//                    url = welcome[chordCount]!
//                    print(chordCount)
//                    chordCount += 1
//
//                }
//                else {
//                    url = welcome[chordCount]!
//                    print(chordCount)
//                    chordCount += 1
//                }
//            } else if songName == "GET WEIRD" {
//                if chordCount >= 4 {
//                    let randomNum = Int(arc4random_uniform(UInt32(weird.count)))
//                    url = weird[randomNum]!
//
//                }
//                else {
//                    url = weird[chordCount]!
//                    print(chordCount)
//                    chordCount += 1
//                }
//            }
//
////            Bundle.main.url(forResource: "Sabbie1", withExtension: "mp3"), Bundle.main.url(forResource: "Sabbie2", withExtension: "mp3"), Bundle.main.url(forResource: "Sabbie3", withExtension: "mp3")
//
//            do {
//                objPlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
//                objPlayer?.prepareToPlay()
//
//
//                let audioSession = AVAudioSession.sharedInstance()
//                do {
//                    try audioSession.setCategory(AVAudioSessionCategoryPlayback)
//                } catch let sessionError {
//                    print(sessionError)
//                }
//
//                multiplePlayersAtOnce.append(objPlayer!)
//
//
//                multiplePlayersAtOnce[count].play()
////                objPlayer?.play()
//
//                count+=1
//
//
//            } catch let error {
//                print(error.localizedDescription)
//            }
//
//        } else {
//            guard var url = Bundle.main.url(forResource: "echord", withExtension: "wav") else { return }
//
//            if songName == "PRACTICE" {
//                if chordCount == 0 {
//                    url = practiceChords[chordCount]!
//                    chordCount = 1
//
//                }
//                else {
//                    url = practiceChords[chordCount]!
//                    chordCount = 0
//                }
//            }
//            else if songName == "BLACK SABBATH" {
//                if chordCount >= blackSabbath.count {
//                    chordCount = 0
//                    url = blackSabbath[chordCount]!
//                    print(chordCount)
//                    chordCount += 1
//
//                }
//                else {
//                    url = blackSabbath[chordCount]!
//                    print(chordCount)
//                    chordCount += 1
//                }
//            }
//
//            do {
//                objPlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
//                objPlayer?.prepareToPlay()
//
//
//                let audioSession = AVAudioSession.sharedInstance()
//                do {
//                    try audioSession.setCategory(AVAudioSessionCategoryPlayback)
//                } catch let sessionError {
//                    print(sessionError)
//                }
//
//
//
//                objPlayer?.play()
//
//            } catch let error {
//                print(error.localizedDescription)
//            }
//
//        }
//
//    }
//
//
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}

