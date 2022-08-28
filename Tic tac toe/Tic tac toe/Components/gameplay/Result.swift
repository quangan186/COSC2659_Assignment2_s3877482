/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Bui Quang An
  ID: 3877482
  Created  date: 18/08/2022
  Last modified: 28/08/2022
  Acknowledgement: Youtube.
*/

import SwiftUI

struct Result: View {
    @Binding var result: String
    @Binding var moves: [Move?]
    @Binding var round: Int
    @Binding var score: Int
    @Binding var name: String
    @Binding var modeName: String
    
    @ObservedObject var scores = Scores()
    @ObservedObject var names = Names()
    @ObservedObject var modes = Modes()
    
    var body: some View {
        VStack{
            Spacer()
            // If players win, the "Continue" button and the fireworks animation will be rendered with the sound effect
            if result == "Win"{
                Text(result).foregroundColor(Color("blue")).font(.custom("Roboto", size: 36)).fontWeight(.semibold).padding().frame(maxWidth: .infinity).onAppear(perform: {
                    playSound(sound: "win", type: "mp4")
                }).modifier(FireworksEffect(numberOfFireworks: 20))
                Button(action: {
                    moves = Array(repeating: nil, count: 9)
                    result = ""
                    round += 1
                    score += 3
                }, label: {
                    Text("Continue").frame(maxWidth: .infinity, maxHeight: 60).foregroundColor(Color.white)
                }).background(Color("blue")).cornerRadius(50).padding(.vertical)
            }
            // If players tie, the "Continue" button will be rendered with the sound effect
            if result == "Draw"{
                Text(result).foregroundColor(Color("Word")).font(.custom("Roboto", size: 36)).fontWeight(.semibold).padding(.vertical).onAppear(perform: {
                    playSound(sound: "draw", type: "mp4")
                })
                Button(action: {
                    moves = Array(repeating: nil, count: 9)
                    result = ""
                    round += 1
                    score += 1
                }, label: {
                    Text("Continue").frame(maxWidth: .infinity, maxHeight: 60).foregroundColor(Color.white)
                }).background(Color("blue")).cornerRadius(50)
            }
            // If players lose, the "Try Again" and "Back to menu" buttons and the snow animation will be rendered with the sound effect
            if result == "Lose"{
                Text(result).foregroundColor(Color("red") ).font(.custom("Roboto", size: 36)).fontWeight(.semibold).padding(.vertical).onAppear(perform: {
                    scores.addScore(playerScore: PlayerScore(score: score))
                    modes.addMode(mode: Mode(mode: modeName))
                    playSound(sound: "lose", type: "mp4")
                }).frame(maxWidth: .infinity).modifier(SnowEffect())
                HStack{
                    Button(action: {
                        names.addName(playerName: PlayerName(name: name))
                        moves = Array(repeating: nil, count: 9)
                        audioPlayer?.stop()
                        result = ""
                        round = 1
                        score = 0
                    }, label: {
                        Text("Play Again").frame(maxWidth: .infinity, maxHeight: 60).foregroundColor(Color.white)
                    }).background(Color("red")).cornerRadius(50)
                    NavigationLink(destination: Menu(), label: {
                        Text("Back to menu").frame(maxWidth: .infinity, maxHeight: 60).foregroundColor(Color.white)
                    }).background(Color("blue")).cornerRadius(50).simultaneousGesture(TapGesture().onEnded{
                        playSound(sound: "intro", type: "mp4")
                    }
                    )
                }.padding(.vertical)
            }
            Spacer()
        }
    }
}
