//
//  MenuButtons.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 18/08/2022.
//

import SwiftUI

struct MenuButtons: View {
    @Binding var result: String
    @Binding var moves: [Move?]
    @Binding var round: Int
    @Binding var score: Int
    @Binding var name: String
    var body: some View {
        Spacer()
        NavigationLink(destination: NameRegisterForm(result: $result, moves: $moves, round: $round, score: $score, playerName: $name), label: {
            Text("Play game").fontWeight(.semibold).foregroundColor(Color.white).frame(maxWidth: .infinity, maxHeight:60)
        }).background(Color.blue).cornerRadius(50).padding(.horizontal)
        
        Spacer()
        NavigationLink(destination: Leaderboard(), label: {
            Text("Leaderboard").fontWeight(.semibold).foregroundColor(Color.white).frame(maxWidth: .infinity, maxHeight:60)
        }).background(Color.blue).cornerRadius(50).padding(.horizontal)
        
        Spacer()
        NavigationLink(destination: HowToPlay(), label: {
            Text("How to play").fontWeight(.semibold).foregroundColor(Color.white).frame(maxWidth: .infinity, maxHeight:60)
        }).background(Color.blue).cornerRadius(50).padding(.horizontal)
        Spacer()
    }
}
