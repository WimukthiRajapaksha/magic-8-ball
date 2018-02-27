//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Wimukthi Rajapaksha on 12/21/17.
//  Copyright © 2017 Wimu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    let arrayBalls=["ball1","ball2","ball3","ball4","ball5"]
//    var randomBallNumber
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
//        imageView=nil
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    func newBallImage() {
        let randNum:Int=Int(arc4random_uniform(5))
        imageView.image = UIImage(named: arrayBalls[randNum])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}
