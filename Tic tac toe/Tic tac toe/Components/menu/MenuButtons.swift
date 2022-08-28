/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Bui Quang An
  ID: 3877482
  Created  date: 18/08/2022
  Last modified: 28/08/2022
  Acknowledgement: N/A.
*/

import SwiftUI

struct MenuButtons: View {
    @Binding var name: String
    @Binding var modeName: String
    @State var darkMode = false
    @State var useSystem = true
    var body: some View {
        Spacer()
        // Button directing to Name Register page
        NavigationLink(destination: NameRegisterForm(name: $name, modeName: $modeName), label: {
            Text("Play game").fontWeight(.semibold).foregroundColor(Color.white).frame(maxWidth: .infinity, maxHeight:60)
        }).background(Color.blue).cornerRadius(50).padding(.horizontal)
        
        Spacer()
        // Button directing to Leaderboard page
        NavigationLink(destination: Leaderboard(), label: {
            Text("Leaderboard").fontWeight(.semibold).foregroundColor(Color.white).frame(maxWidth: .infinity, maxHeight:60)
        }).background(Color.blue).cornerRadius(50).padding(.horizontal)
        
        Spacer()
        // Button directing to How to play page
        NavigationLink(destination: HowToPlay(), label: {
            Text("How to play").fontWeight(.semibold).foregroundColor(Color.white).frame(maxWidth: .infinity, maxHeight:60)
        }).background(Color.blue).cornerRadius(50).padding(.horizontal)
        Spacer()
        // Button directing to Settings page
        NavigationLink(destination: Settings(modeName: $modeName, darkMode: $darkMode, useSystem: $useSystem), label: {
            Text("Settings").fontWeight(.semibold).foregroundColor(Color.white).frame(maxWidth: .infinity, maxHeight:60)
        }).background(Color.blue).cornerRadius(50).padding(.horizontal)
        Spacer()
    }
}
