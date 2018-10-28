//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Satyakumar BS on 28/10/18.
//  Copyright © 2018 Passion Fruit Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magicBall: UIImageView!
    
    let ballImageArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomBallImageGenerator()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        randomBallImageGenerator()
    }
    
    func randomBallImageGenerator() {
        magicBall.image = UIImage(named: ballImageArray[Int(arc4random_uniform(5))])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomBallImageGenerator()
    }
}

