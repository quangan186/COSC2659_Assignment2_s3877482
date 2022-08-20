//
//  Logo.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 18/08/2022.
//

import SwiftUI

struct Logo: View {
    var body: some View {
        HStack{
            Spacer()
            Text("Tic").foregroundColor(Color("blue")).font(.custom("Roboto", size: 100))
            Spacer()
            Spacer()
        }
        
        HStack{
            Text("Tac").foregroundColor(Color.white).font(.custom("Roboto", size: 100))
        }
        
        HStack{
            Spacer()
            Spacer()
            Text("Toe").foregroundColor(Color("red")).font(.custom("Roboto", size: 100))
            Spacer()
        }
    }
}

struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Logo()
    }
}
