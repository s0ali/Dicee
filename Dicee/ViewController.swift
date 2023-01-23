//
//  ViewController.swift
//  Dicee
//
//  Created by Sayed Ali Husain on 19/01/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        diceImageView1.image = UIImage(imageLiteralResourceName: "DiceSix")
//        diceImageView1.alpha = 0.5
//
//        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceTwo")
    }

    @IBAction func rollButton(_ sender: Any) {
        diceImageView1.image = diceArray.randomElement()
        
        diceImageView2.image = diceArray[Int.random(in: 0...diceArray.count-1)]
    }
    
}

