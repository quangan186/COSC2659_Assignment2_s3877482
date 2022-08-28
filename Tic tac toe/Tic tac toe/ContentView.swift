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

struct ContentView: View{
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.init(Color("blue"))]
        playSound(sound: "intro", type: "mp4")
    }
    
    var body: some View {
        NavigationView{
            Menu()
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
