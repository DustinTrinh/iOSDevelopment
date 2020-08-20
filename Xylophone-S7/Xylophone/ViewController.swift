//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    @IBAction func cPressed(_ sender: UIButton) {
        playSound(keynote: "C")
        
        blur(button: sender)
    }
    @IBAction func dPressed(_ sender: UIButton) {
        playSound(keynote: "D")
        blur(button: sender)
        
    }
    @IBAction func ePressed(_ sender: UIButton) {
        playSound(keynote: "E")
        blur(button: sender)
    }
    @IBAction func fPressed(_ sender: UIButton) {
        playSound(keynote: "F")
        blur(button: sender)
    }
    @IBAction func gPressed(_ sender: UIButton) {
        playSound(keynote: "G")
        blur(button: sender)
    }
    @IBAction func aPressed(_ sender: UIButton) {
        playSound(keynote: "A")
        blur(button: sender)
    }
    @IBAction func bPressed(_ sender: UIButton) {
        playSound(keynote: "B")
        blur(button: sender)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    func playSound(keynote: String) {
        guard let url = Bundle.main.url(forResource: keynote, withExtension: "wav") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

                   player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)

       
            guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func blur(button: UIButton){
        button.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            button.alpha = 1.0
        }
    }
}

