//
//  History.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 19/08/2022.
//

import SwiftUI

struct HistoryList: View {
    @ObservedObject var names = Names()
    
    @ObservedObject var scores = Scores()

    var body: some View {
        HStack{
            VStack{
                ForEach(names.names, id: \.id){
                    name in
                    Text("\(name.name)").foregroundColor(.white).fontWeight(.semibold).padding(.vertical)
                }
            }
            
            Spacer()
            
            VStack{
                ForEach(scores.scores, id: \.id ){
                    score in
                    Text("\(score.score)").foregroundColor(.white).fontWeight(.semibold).padding(.vertical)
                }
            }
        }
        Button(action: {
            UserDefaults.standard.removeObject(forKey: "names")
            UserDefaults.standard.removeObject(forKey: "scores")
        }, label: {
            Text("Remove data").foregroundColor(.white)
        })
    }
}
