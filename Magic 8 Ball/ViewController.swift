//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by KARTIK SONI on 09/11/18.
//  Copyright © 2018 KARTIK SONI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    var randomBallIndex: Int = 0
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func askButtonAtion(_ sender: UIButton) {
        updateBallStatus()
    }
    
    
    
    func updateBallStatus() {
        randomBallIndex = Int.random(in: 0 ... 4)
        ballImage.image = UIImage(named: ballArray[randomBallIndex])
    }
    
}
