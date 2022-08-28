/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Bui Quang An
  ID: 3877482
  Created  date: 17/08/2022
  Last modified: 28/08/2022
  Acknowledgement: N/A.
*/

import SwiftUI

struct Menu: View {
    @State var name = ""
    @State var modeName = UserDefaults.standard.string(forKey: "currentMode") ?? "Easy"
    var body: some View {
        ZStack{
            // Render Logo and List of buttons
            VStack{
                Logo()
                MenuButtons(name: $name, modeName: $modeName)
            }.frame(maxHeight: .infinity, alignment: .top).padding(.vertical)
        }.background(Color("Mode")).navigationBarHidden(true)
    }
}
