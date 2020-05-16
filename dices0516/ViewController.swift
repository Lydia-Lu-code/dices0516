//
//  ViewController.swift
//  dices0516
//
//  Created by 維衣 on 2020/5/16.
//  Copyright © 2020 Lydia-L. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet var diceImageViews: [UIImageView]!
    //Array陣列：排列方式[0,1,2,3,4,5]
    var imageNames = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    var player: AVPlayer?
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        for diceimage in diceImageViews {
            diceimage.image = UIImage(named: imageNames.randomElement()!)
            
            //這裡要加上驚嘆號，不然會出現紅色錯誤。
            let voice = Bundle.main.url(forResource: "shakeVoice", withExtension: "wav")!
            player = AVPlayer(url: voice)
            player?.play()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for diceimage in diceImageViews {
            diceimage.image = UIImage(named: imageNames.randomElement()!)
        }
        for diceimage in diceImageViews {
            diceimage.isHidden = false
        }
    }
        
    @IBAction func roll(_ sender: Any) {
        //命名diceImageView，在圖片們(diceImageViews)中做{}(大括號)裡面的事
        for diceimage in diceImageViews {
            diceimage.image = UIImage(named: imageNames.randomElement()!)
        let voice = Bundle.main.url(forResource: "shakeVoice", withExtension: "wav")!
            player = AVPlayer(url: voice)
            player?.play()
        }
    }
    
    @IBAction func openDice(_ sender: UISwitch) {
        for imageView in diceImageViews{
            imageView.isHidden = !sender.isOn
        } //驚嘆號在前是不等於

        }
}
    
    

    
    
    
    


