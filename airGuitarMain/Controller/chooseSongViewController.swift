//
//  chooseSongViewController.swift
//  airGuitarSamurai
//
//  Created by gregory paulos on 5/11/18.
//  Copyright © 2018 gregory paulos. All rights reserved.
//

import UIKit

class chooseSongViewController: UIViewController {

    var songName = ""
    
    @IBAction func homePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  

    
    @IBAction func songPressed(_ sender: UIButton) {
        print("PRESSED")
        songName=sender.titleLabel!.text!
                print("INSIDE CHOOSE SONG")
                print(songName)
        performSegue(withIdentifier: "aboutToRock", sender: self)
    }
    
//
//    @IBAction func songPressed(_ sender: UIButton) {
//        songName=sender.titleLabel!.text!
//        print("INSIDE CHOOSE SONG")
//        print(songName)
//        performSegue(withIdentifier: "aboutToRock", sender: self)
//    }
//
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "aboutToRock" {
            let rockinView = segue.destination as! rockinViewController
            rockinView.songName = songName
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
