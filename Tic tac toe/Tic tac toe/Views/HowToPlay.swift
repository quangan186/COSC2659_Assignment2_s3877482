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
struct HowToPlay: View {
    var body: some View {
        ScrollView{
            // Render instruction list
            VStack{
                Instruction()
            }.padding(.horizontal).navigationTitle("How to play").foregroundColor(Color("Word"))
        }.frame(maxHeight: .infinity, alignment: .top).background(Color("Mode"))
    }
}

