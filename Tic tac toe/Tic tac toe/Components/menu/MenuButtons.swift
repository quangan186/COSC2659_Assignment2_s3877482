//
//  MenuButtons.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 18/08/2022.
//

import SwiftUI

struct MenuButtons: View {
    @State var name = ""
//    @Binding var historyList: History
    var body: some View {
        Spacer()
        NavigationLink(destination: NameRegisterForm(name: $name), label: {
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
