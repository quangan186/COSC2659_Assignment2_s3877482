//
//  SoundEffect.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 25/08/2022.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType:type){
        if (sound != "" && type != ""){
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                audioPlayer?.play()
            } catch{
                print("Error file")
            }
        } else{
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                audioPlayer?.stop()
            } catch{
                print("Error file")
            }
        }
    }

}
