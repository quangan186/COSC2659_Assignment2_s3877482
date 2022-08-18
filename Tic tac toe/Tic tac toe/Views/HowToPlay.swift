//
//  HowToPlay.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 18/08/2022.
//

import SwiftUI

struct HowToPlay: View {
//    init() {
//
//        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.init(Color("blue"))]
//             }
    var body: some View {
        ScrollView{
            VStack{
                Instruction()
            }.padding(.horizontal).navigationTitle("How to play").environment(\.colorScheme, .dark)
        }.frame(maxHeight: .infinity, alignment: .top).background(.black)
    }
}

struct HowToPlay_Previews: PreviewProvider {
    static var previews: some View {
        HowToPlay()
    }
}
