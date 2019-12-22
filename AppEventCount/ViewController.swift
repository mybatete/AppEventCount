//
//  ViewController.swift
//  AppEventCount
//
//  Created by Marc Batete on 10/24/19.
//  Copyright © 2019 Marc Batete. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var didFinishLaunching: UILabel!
    var launchCount = 0
    @IBOutlet weak var willResignActive: UILabel!
    var ResignActiveCount = 0
    @IBOutlet weak var willEnterForeground: UILabel!
    var enterForegroundCount = 0
    @IBOutlet weak var didEnterBackground: UILabel!
    var enterBackgroundCount = 0
    @IBOutlet weak var didBecomeActive: UILabel!
    var becomeActiveCount = 0
    @IBOutlet weak var willTerminate: UILabel!
    var terminatedCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateView()
    }

    func updateView(){
        didEnterBackground.text = "The app has entered the background \(enterBackgroundCount) times"
        didFinishLaunching.text = "The app has been launched \(launchCount) Times"
        willResignActive.text = " The app has been deactivated \(ResignActiveCount) times"
        willEnterForeground.text = "The app has come back to foreground  \(enterForegroundCount) times"
        didBecomeActive.text = "The app has become active \(becomeActiveCount) times"
        willTerminate.text = "The app has terminated \(terminatedCount) times"
    }
}


