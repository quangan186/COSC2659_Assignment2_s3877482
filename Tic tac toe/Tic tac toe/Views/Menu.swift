//
//  Menu.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 17/08/2022.
//

import SwiftUI

struct Menu: View {
    @State var name = ""
    @State var modeName = ""
    @State var easy = true;
    @State var hard = false;
    var body: some View {
        ZStack{
            VStack{
                Logo()
                MenuButtons(name: $name, modeName: $modeName, easy: $easy, hard: $hard)
            }.frame(maxHeight: .infinity, alignment: .top).padding(.vertical)
        }.background(Color("Mode")).navigationBarHidden(true)
    }
}
