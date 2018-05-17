//
//  requestNewSongViewController.swift
//  airGuitarSamurai
//
//  Created by gregory paulos on 5/15/18.
//  Copyright © 2018 gregory paulos. All rights reserved.
//

import UIKit
// import Firebase

class requestNewSongViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var ourTextLine1: UILabel!
    @IBOutlet weak var ourTextLine2: UILabel!
    @IBOutlet weak var thanks: UILabel!
    @IBOutlet weak var totally: UILabel!
    @IBOutlet weak var sendButton: UIButton!
    
    @IBOutlet weak var userText: UITextField!
    
    @IBAction func sendPressed(_ sender: Any) {
        print("pressed button")
        userText.endEditing(true)
        userText.isEnabled = false
        sendButton.isEnabled = false
        
        ourTextLine1.isHidden = true
        ourTextLine2.isHidden = true
        userText.isHidden = true
        sendButton.isHidden = true
        
        thanks.isHidden = false
        totally.isHidden = false
        
        
//
//        let songsDB = Database.database().reference().child("Songs")
//
//        print(userText.text!)
//
//        let songData = ["user": "testenv", "song": userText.text!]
//
//        songsDB.childByAutoId().setValue(songData) {
//            (error, reference) in
//            if error != nil {
//                print(error!)
//            } else {
//                print("song saved in database")
//                self.userText.isEnabled = true
//                self.sendButton.isEnabled = true
//                self.userText.text=""
//            }
//        }
//
    }
    
    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        thanks.isHidden = true
        totally.isHidden = true
        
//        check to see if already configured before configuring again
//        if FirebaseApp.app() == nil {
//            FirebaseApp.configure()
//        }

        
        //        FirebaseApp.configure()
        
//        let myDatabase = Database.database().reference()
        
        
        userText.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //MARK: - TextField Delegate Methods
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
    }
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
    }


}
