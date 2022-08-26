//
//  PlayerScore.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 26/08/2022.
//

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
