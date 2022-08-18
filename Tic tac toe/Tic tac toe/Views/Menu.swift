//
//  Menu.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 17/08/2022.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        ZStack{
            VStack{
                Logo()
                MenuButtons()
            }.frame(maxHeight: .infinity, alignment: .top)
        }.background(Color.black)
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
