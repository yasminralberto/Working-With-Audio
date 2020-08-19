//
//  ViewController.swift
//  Yasmin_A_BillsAudio_App
//
//  Created by Yasmin Alberto Ruiz on 8/19/20.
//  Copyright © 2020 Yasmin Alberto Ruiz. All rights reserved.
//
import UIKit

//MARK: - Import the audio library.
import AVFoundation

class ViewController: UIViewController {
    
    //MARK: - Instantiate the Audio Player
    var audioPlayer = AVAudioPlayer()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        //MARK: - Tell us where the sound file is
        let sound = Bundle.main.path(forResource: "261100__frankyboomer__jazz-loop", ofType: "wav")
        
        //MARK: - Handle any errors or issues
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

