//
//  ViewController.swift
//  Yasmin_A_BillsAudio_App
//
//  Created by Yasmin Alberto Ruiz on 8/19/20.
//  Copyright © 2020 Yasmin Alberto Ruiz. All rights reserved.
//
import UIKit


import AVFoundation

class ViewController: UIViewController {
    

    var audioPlayer = AVAudioPlayer()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()


        let sound = Bundle.main.path(forResource: "261100__frankyboomer__jazz-loop", ofType: "wav")
        

        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        } catch{
            print(error)
        }
    }
    
    @IBAction func pauseAudio(_ sender: Any) {
        audioPlayer.pause()
    }
    @IBAction func playAudio(_ sender: Any) {
        audioPlayer.play()
    }
        @IBAction func stopAudio(_ sender: Any) {
            audioPlayer.stop()
        }
    }

