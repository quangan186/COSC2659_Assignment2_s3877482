//
//  Result.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 18/08/2022.
//

import SwiftUI

struct Result: View {
    var body: some View {
        VStack{
            Spacer()
            Text("Win").foregroundColor(Color("red") ).font(.custom("Roboto", size: 36)).fontWeight(.semibold)
            Spacer()
        }
    }
}

struct Result_Previews: PreviewProvider {
    static var previews: some View {
        Result()
    }
}
