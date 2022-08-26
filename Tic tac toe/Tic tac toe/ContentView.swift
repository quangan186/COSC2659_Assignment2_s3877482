//
//  ContentView.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 17/08/2022.
//

import SwiftUI

struct ContentView: View{
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.init(Color("blue"))]
        playSound(sound: "intro", type: "mp4")
//        self.modeName = modeName
//        self.easy = easy
//        self.hard = hard
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
