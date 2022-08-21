//
//  Menu.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 17/08/2022.
//

import SwiftUI

struct Menu: View {
    @State var result = ""
    @State var moves: [Move?] = Array(repeating: nil, count: 9)
    @State var round = 1
    @State var score = 0
    @State var name = ""
    var body: some View {
        ZStack{
            VStack{
                Logo()
                MenuButtons(result: $result, moves: $moves, round: $round, score: $score, name: $name)
            }.frame(maxHeight: .infinity, alignment: .top).padding(.vertical)
        }.background(Color.black).navigationBarHidden(true)
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
