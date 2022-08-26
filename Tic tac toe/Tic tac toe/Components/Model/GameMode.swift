//
//  GameMode.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 26/08/2022.
//

import Foundation

struct Mode: Identifiable, Codable {
    var id = UUID()
    var mode: String
}

class Modes: ObservableObject {
    @Published var modes: [Mode]
    
    init(){
        if let data = UserDefaults.standard.data(forKey: "modes"){
            if let decoded = try? JSONDecoder().decode([Mode].self, from: data) {
                modes = decoded
                return
            }
        }
        
        modes = []
    }
    
    func save() {
        if let encoded = try? JSONEncoder().encode(modes){
            UserDefaults.standard.set(encoded, forKey: "modes")
        }
    }
    
    func addMode(mode: Mode){
        modes.append(mode)
        save()
    }
}
