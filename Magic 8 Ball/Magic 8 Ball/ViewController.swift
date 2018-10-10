//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by SuperSwiftX on 2018-10-10.
//  Copyright © 2018 SuperiorSwiftX. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ballAnswer: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomBall()
    }

    
    @IBAction func askButton(_ sender: Any) {
        randomBall()
    
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomBall()
    }
    
    func randomBall() {
        // Random  function, that change the magic ball image.
        // We have four images, hence why we use random 1 to 5
        ballAnswer.image = UIImage(named: "ball\(Int.random(in: 1 ... 5))")
    }
    
}

