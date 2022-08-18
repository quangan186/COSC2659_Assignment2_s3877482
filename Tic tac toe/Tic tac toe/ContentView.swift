//
//  ContentView.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 17/08/2022.
//

import SwiftUI

struct ContentView: View {
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
