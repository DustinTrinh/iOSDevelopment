//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    //Dictionary
    
    @IBOutlet weak var timeBar: UIProgressView!
    let time = [
        "Soft": 5,
        "Medium": 7,
        "Hard": 12
    ]
    var timer = Timer()
    var secondRemain = 60
    var player: AVAudioPlayer?
    var originalTime = 0
    @IBAction func hardnessSelection(_ sender: UIButton) {
        timer.invalidate()
        originalTime = 0
        let hardness = sender.currentTitle!
        timeBar.progress = 0.0
        
        originalTime = time[hardness]! * 2
        secondRemain = time[hardness]! * 2
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(startTimer), userInfo: nil, repeats: true)
    }
    
    @objc func startTimer() {
        if secondRemain > 0{
            timeBar.progress = 1.0 - Float(secondRemain)/Float(originalTime)
            secondRemain -= 1
            
        }
        else{
            timer.invalidate()
            timeBar.progress = 1.0
            titleLabel.text = "Done"
            guard let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3") else { return }

            do {
                try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
                try AVAudioSession.sharedInstance().setActive(true)

                player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

                guard let player = player else { return }

                player.play()

            } catch let error {
                print(error.localizedDescription)
            }
        }
    }
    

}
