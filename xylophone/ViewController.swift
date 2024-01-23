//
//  ViewController.swift
//  xylophone
//
//  Created by Manuvela on 19/01/24.
//

import UIKit
import AVFoundation //Audio visual Foundation

class ViewController: UIViewController {
    var player : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.layer.opacity = 0.5
        playSound(buttonName: sender.titleLabel?.text ?? "A")
        print(sender.titleLabel?.text)
    }
   
    
    
    
    func playSound(buttonName : String) {
        let url = Bundle.main.url(forResource: buttonName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }

    

    
    
    
}

