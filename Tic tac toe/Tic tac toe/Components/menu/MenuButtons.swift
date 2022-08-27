//
//  MenuButtons.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 18/08/2022.
//

import SwiftUI

struct MenuButtons: View {
    @Binding var name: String
    @Binding var modeName: String
    @State var isDarkMode = false
    @State var isUsedSystem = false
    var body: some View {
        Spacer()
        NavigationLink(destination: NameRegisterForm(name: $name, modeName: $modeName), label: {
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
        NavigationLink(destination: Settings(modeName: $modeName, isDarkMode: $isDarkMode, isUsedSystem: $isUsedSystem), label: {
            Text("Settings").fontWeight(.semibold).foregroundColor(Color.white).frame(maxWidth: .infinity, maxHeight:60)
        }).background(Color.blue).cornerRadius(50).padding(.horizontal)
        Spacer()
    }
}
