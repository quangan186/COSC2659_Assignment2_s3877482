/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Bui Quang An
  ID: 3877482
  Created  date: 25/08/2022
  Last modified: 28/08/2022
  Acknowledgement: Canvas lecture slide.
*/

import AVFoundation

var audioPlayer: AVAudioPlayer?
 // play sound effect function
func playSound(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType:type){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
            } catch{
                print("Error file")
                audioPlayer?.stop()
            }
        }

}
