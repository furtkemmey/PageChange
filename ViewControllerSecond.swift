//
//  ViewControllerSecond.swift
//  PageChange
//
//  Created by KaiChieh on 2018/1/31.
//  Copyright © 2018年 KaiChieh. All rights reserved.
//

import UIKit

class ViewControllerSecond: UIViewController {
    // MARK: - Property
    @IBOutlet weak var label: UILabel!

    /// a message from 1st view
    var messageOfSegue: String? {
        willSet {
            label?.text = newValue
        }
    }
    /// a ViewController from 1st
    weak var previusVC: ViewController?
    //---------------------------------------------------

    /**
     dismiss self view

     - Parameters:
         - sender: UIButton
     */
    @IBAction func returnPage(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    //---------------------------------------------------

    /**
     dismiss self view by swipe gesture

     - Parameters:
         - sender: UISwipeGestureRecognizer
     */
    @IBAction func swipeGesture(_ sender: UISwipeGestureRecognizer) {
        self.dismiss(animated: true, completion: nil)

    }
    //---------------------------------------------------

    override func viewDidLoad() {
        super.viewDidLoad()
//        label.text = messageOfSegue //get text from message passing
        label.text = previusVC?.label.text //get text from property of ViewController
        previusVC?.onClick(nil)//call click on 1st view

        print("view2 did load")

        // Do any additional setup after loading the view.
    }    // MARK: - Appear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view2 will appear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view2 did appear")
    }
    //---------------------------------------------------

    // MARK: - Layout subviews
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("view2 did layout subviews")
    }
    //---------------------------------------------------

    // MARK: - Disappear
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view2 will disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view2 did disappear")
    }
    //---------------------------------------------------

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //---------------------------------------------------

    deinit {
        print("view2 deinit")
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
