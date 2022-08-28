/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Bui Quang An
  ID: 3877482
  Created  date: 26/08/2022
  Last modified: 28/08/2022
  Acknowledgement: Hackingwithswift.
*/

import Foundation

struct PlayerScore: Identifiable, Codable {
    var id = UUID()
    var score: Int
}

class Scores: ObservableObject {
    @Published var scores: [PlayerScore]
    
    init(){
        if let data = UserDefaults.standard.data(forKey: "scores"){
            if let decoded = try? JSONDecoder().decode([PlayerScore].self, from: data) {
                scores = decoded
                return
            }
        }
        
        scores = []
    }
    
    func save() {
        if let encoded = try? JSONEncoder().encode(scores){
            UserDefaults.standard.set(encoded, forKey: "scores")
        }
    }
    
    func addScore(playerScore: PlayerScore){
        scores.append(playerScore)
        save()
    }
}
