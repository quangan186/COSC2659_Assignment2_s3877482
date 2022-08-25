//
//  HistoryData.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 19/08/2022.
//

import Foundation

struct PlayerName: Identifiable, Codable {
    var id = UUID()
    var name: String
}

struct PlayerScore: Identifiable, Codable {
    var id = UUID()
    var score: Int
}

class Names: ObservableObject {
    @Published var names: [PlayerName]
    
    init(){
        if let data = UserDefaults.standard.data(forKey: "names"){
            if let decoded = try? JSONDecoder().decode([PlayerName].self, from: data) {
                names = decoded
                return
            }
        }
        
        names = []
    }
    
    func save() {
        if let encoded = try? JSONEncoder().encode(names){
            UserDefaults.standard.set(encoded, forKey: "names")
        }
    }
    
    func addName(playerName: PlayerName){
        names.append(playerName)
        save()
    }
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
