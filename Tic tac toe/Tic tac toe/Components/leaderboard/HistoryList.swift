/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Bui Quang An
  ID: 3877482
  Created  date: 19/08/2022
  Last modified: 28/08/2022
  Acknowledgement: N/A.
*/
import SwiftUI

struct HistoryList: View {
    @ObservedObject var names = Names()
    
    @ObservedObject var scores = Scores()
    
    @ObservedObject var modes = Modes()
    
    var body: some View {
        // Render player's names list
        HStack{
            VStack{
                ForEach(names.names, id: \.id){
                    name in
                    Text("\(name.name)").foregroundColor(Color("Word")).padding(.vertical)
                }
            }
            
            Spacer()
            // Render list of modes that players chose to play
            VStack{
                ForEach(modes.modes, id: \.id ){
                    mode in
                    Text("\(mode.mode)").foregroundColor(Color("Word")).padding(.vertical)
                }
            }
            
            Spacer()
            
            // Render player's scores list
            VStack{
                ForEach(scores.scores, id: \.id ){
                    score in
                    Text("\(score.score)").foregroundColor(Color("Word")).padding(.vertical)
                }
            }
        }
    }
}
