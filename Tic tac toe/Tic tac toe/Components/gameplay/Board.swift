//
//  Board.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 18/08/2022.
//

import SwiftUI

let column: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]

struct Board: View {
    var body: some View {
        GeometryReader{ geometry in
            VStack{
                LazyVGrid(columns: column){
                    ForEach(0 ..< 9){ i in
                        ZStack{
                            Rectangle().frame(width: geometry.size.width/4, height: geometry.size.width/4).border(.white, width: 1)
                            Image(systemName: "xmark").resizable().frame(width: 40, height: 40).foregroundColor(Color("blue"))
                        }
                    }
                }.padding(40)
            }
        }
    }
}

struct Board_Previews: PreviewProvider {
    static var previews: some View {
        Board()
    }
}
