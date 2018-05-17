//
//  tutorialController.swift
//  airGuitarSamurai
//
//  Created by gregory paulos on 5/11/18.
//  Copyright © 2018 gregory paulos. All rights reserved.
//

import UIKit

class tutorialController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        let swipeLeft = UISwipeGestureRecognizer(target: self, action: Selector(("respondToSwipeGesture:")))
//        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
//        self.view.addGestureRecognizer(swipeLeft)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func homePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
//    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
//
//        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
//
//
//            switch swipeGesture.direction {
////            case UISwipeGestureRecognizerDirection.Right:
////                print("Swiped right")
////            case UISwipeGestureRecognizerDirection.Down:
////                print("Swiped down")
//            case UISwipeGestureRecognizerDirection.left:
//                print("Swiped left")
////            case UISwipeGestureRecognizerDirection.Up:
////                print("Swiped up")
//            default:
//                break
//            }
//        }
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
