//
//  HowToPlay.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 18/08/2022.
//

import SwiftUI
struct HowToPlay: View {
    var body: some View {
        ScrollView{
            VStack{
                Instruction()
            }.padding(.horizontal).navigationTitle("How to play").foregroundColor(Color("Word"))
        }.frame(maxHeight: .infinity, alignment: .top).background(Color("Mode"))
    }
}

struct HowToPlay_Previews: PreviewProvider {
    static var previews: some View {
        HowToPlay()
    }
}
