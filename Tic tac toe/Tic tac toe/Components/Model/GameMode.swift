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
