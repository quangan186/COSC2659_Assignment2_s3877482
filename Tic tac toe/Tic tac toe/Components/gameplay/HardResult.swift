//
//  Result.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 18/08/2022.
//

import SwiftUI

struct HardResult: View {
    @Binding var result: String
    @Binding var moves: [Move?]
    @Binding var round: Int
    @Binding var score: Int
    @Binding var name: String
    @ObservedObject var scores = Scores()
    @ObservedObject var names = Names()
    
    var body: some View {
        VStack{
            Spacer()
            if result == "Win"{
                Text(result).foregroundColor(Color("blue")).font(.custom("Roboto", size: 36)).fontWeight(.semibold).padding().frame(maxWidth: .infinity).onAppear(perform: {
                    playSound(sound: "win", type: "mp4")
                }).modifier(FireworksEffect(numberOfFireworks: 20))
                Button(action: {
                    moves = Array(repeating: nil, count: 25)
                    result = ""
                    round += 1
                    score += 3
                }, label: {
                    Text("Continue").frame(maxWidth: .infinity, maxHeight: 60).foregroundColor(Color.white)
                }).background(Color("blue")).cornerRadius(50).padding(.vertical)
            }
            if result == "Draw"{
                Text(result).foregroundColor(Color("Word")).font(.custom("Roboto", size: 36)).fontWeight(.semibold).padding(.vertical).onAppear(perform: {
                    playSound(sound: "draw", type: "mp4")
                })
                Button(action: {
                    moves = Array(repeating: nil, count: 25)
                    result = ""
                    round += 1
                    score += 1
                }, label: {
                    Text("Continue").frame(maxWidth: .infinity, maxHeight: 60).foregroundColor(Color.white)
                }).background(Color("blue")).cornerRadius(50)
            }
            if result == "Lose"{
                Text(result).foregroundColor(Color("red") ).font(.custom("Roboto", size: 36)).fontWeight(.semibold).padding(.vertical).onAppear(perform: {
                    scores.addScore(playerScore: PlayerScore(score: score))
                    playSound(sound: "lose", type: "mp4")
                }).frame(maxWidth: .infinity).modifier(SnowEffect())
                HStack{
                    Button(action: {
                        names.addName(playerName: PlayerName(name: name))
                        moves = Array(repeating: nil, count: 25)
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
