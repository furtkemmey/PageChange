//
//  ViewController.swift
//  PageChange
//
//  Created by KaiChieh on 2018/1/29.
//  Copyright © 2018年 KaiChieh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Property
    ///showing label
    @IBOutlet weak var label: UILabel!

    /**
    receive evnets when button touch up inside and change label name

     - Parameters:
         - sender: The cubes available for allocation
    */
    @IBAction func onClick(_ sender: UIButton?) {
        label.text = "show"
    }
//---------------------------------------------------

    @IBAction func goToNextPage(_ sender: UIButton) {
        if let secondVC = storyboard?.instantiateViewController(withIdentifier: "ViewControllerSecond") as? ViewControllerSecond {// make a instance by storyboard
            secondVC.messageOfSegue = label.text
            secondVC.previusVC = self
            show(secondVC, sender: self)
        }
    }
//---------------------------------------------------

    // MARK: - Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ID = segue.identifier{
            switch ID {
            case "toSecond", "toSecond2":
                if let secondVC = segue.destination as? ViewControllerSecond {
                    secondVC.messageOfSegue = label.text
                    secondVC.previusVC = self
                }
            case "toSecond3":
                print("toSecond3")
            default:
                print("default")
            }
//        if segue.identifier == "toSecond", segue.identifier == "toSecond2" {
//            if let secondVC = segue.destination as? ViewControllerSecond {
//                secondVC.messageOfSegue = label.text
//                secondVC.previusVC = self
//            }
//        }
        }
    }
//---------------------------------------------------

    /**
     when swip run this method

     - Parameters:
     - sender: UISwipeGestureRecognizer
     */
    @IBAction func swipeGesture(_ sender: UISwipeGestureRecognizer) {
        print("gesture swipe")
        performSegue(withIdentifier: "toSecond", sender: nil)
    }
//---------------------------------------------------

    // MARK: - view did load
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view1 did load")
    }
//---------------------------------------------------

    // MARK: - Appear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view1 will appear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view1 did appear")
    }
//---------------------------------------------------

    // MARK: - Layout subviews
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("view1 did layout subviews")
    }
//---------------------------------------------------

    // MARK: - Disappear
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view1 will disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view1 did disappear")
    }
//---------------------------------------------------

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//---------------------------------------------------
}

