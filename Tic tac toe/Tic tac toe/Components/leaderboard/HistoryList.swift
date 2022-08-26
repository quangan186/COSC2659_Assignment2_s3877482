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
    
    @ObservedObject var modes = Modes()
    
    var body: some View {
        HStack{
            VStack{
                ForEach(names.names, id: \.id){
                    name in
                    Text("\(name.name)").foregroundColor(Color("Word")).fontWeight(.semibold).padding(.vertical)
                }
            }
            
            Spacer()
            
            VStack{
                ForEach(modes.modes, id: \.id ){
                    mode in
                    Text("\(mode.mode)").foregroundColor(Color("Word")).fontWeight(.semibold).padding(.vertical)
                }
            }
            
            Spacer()
            
            VStack{
                ForEach(scores.scores, id: \.id ){
                    score in
                    Text("\(score.score)").foregroundColor(Color("Word")).fontWeight(.semibold).padding(.vertical)
                }
            }
        }
        Button(action: {
            UserDefaults.standard.removeObject(forKey: "names")
            UserDefaults.standard.removeObject(forKey: "modes")
            UserDefaults.standard.removeObject(forKey: "scores")
            print(modes.modes)
        }, label: {
            Text("Remove data").foregroundColor(Color("Word"))
        })
    }
}
