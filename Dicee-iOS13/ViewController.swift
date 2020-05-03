//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by MoHaMeD on 11/06/2019.
//  Copyright © 2019 MoHaMeD. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let pathToSound = Bundle.main.url(forResource: "Roll Dice", withExtension: "mp3")
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButton(_ sender: UIButton) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: pathToSound!)
            audioPlayer.play()
        } catch {
            print("couldn't load sound file")
        }
        let dices = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        diceImageView1.image = dices.randomElement()
        diceImageView2.image = dices.randomElement()
    }
    
}

