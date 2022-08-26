//
//  Leaderboard.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 18/08/2022.
//

import SwiftUI

struct Leaderboard: View {
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Text("Player").foregroundColor(Color("blue")).fontWeight(.semibold).font(.custom("Roboto", size: 28))
                    Spacer()
                    
                    Text("Mode").foregroundColor(Color("Word")).fontWeight(.semibold).font(.custom("Roboto", size: 28))
                    Spacer()
                    
                    Text("Score").foregroundColor(Color("red")).fontWeight(.semibold).font(.custom("Roboto", size: 28))
                }
                HistoryList()
            }.navigationTitle("Leaderboard").navigationBarTitleDisplayMode(.automatic).padding().foregroundColor(Color("Word"))
        }.background(Color("Mode"))
    }
}
