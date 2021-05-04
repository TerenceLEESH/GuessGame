//
//  ViewController.swift
//  GuessingGame
//
//  Created by Terence Lee on 21/10/2020.
//

import UIKit

class ViewController: UIViewController {
    
    var myGame = GuessModel()
    

    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var displayLabel1: UILabel!
    
    @IBAction func ButtonAPressed(_ sender: Any) {
        (sender as AnyObject).setTitle(myGame.sendaNewEmoji(), for: UIControl.State.normal)
    }
    
    @IBAction func ButtonBPressed(_ sender: Any) {
        let (message, emoji) = myGame.compare(); displayLabel.text = message
        (sender as AnyObject).setTitle(emoji, for: UIControl.State.normal)
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayLabel.layer.cornerRadius = 10.0
        displayLabel.layer.masksToBounds = true
        displayLabel1.layer.cornerRadius = 10.0
        displayLabel1.layer.masksToBounds = true
        
    }
    
}

    
    


