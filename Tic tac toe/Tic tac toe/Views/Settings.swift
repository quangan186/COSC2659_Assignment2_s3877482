//
//  Settings.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 26/08/2022.
//

import SwiftUI
import Foundation
import UIKit


class ModeManagement {

    static let shared = ModeManagement()

    private init() {

    }

    func handleMode(darkMode: Bool, system: Bool) {
        UIApplication.shared.windows.first?.overrideUserInterfaceStyle = darkMode ? .dark : .light
    }

}

import SwiftUI

struct Settings: View{
    @Binding var modeName: String
    @Binding var isDarkMode:Bool
    @Binding var isUsedSystem:Bool
    
    var body: some View{
        VStack(alignment: .center){
            Text("Current Mode: \(modeName)").fontWeight(.semibold).foregroundColor(Color("blue")).padding().font(.custom("Roboto", size: 28))
            HStack{
                Button(action: {
                    modeName = "Easy"
                    UserDefaults.standard.set(modeName, forKey: "currentMode")
                }, label: {
                    Text("Easy").foregroundColor(.white).frame(maxWidth: .infinity, maxHeight: 60)
                }).background(Color("blue")).cornerRadius(50)
                
                Button(action: {
                    modeName = "Hard"
                    UserDefaults.standard.set(modeName, forKey: "currentMode")
                }, label: {
                    Text("Hard").foregroundColor(.white).frame(maxWidth: .infinity, maxHeight: 60)
                }).background(Color("red")).cornerRadius(50)
            }.padding()
            
            Section(header: Text("Display Settings")) {
                Toggle(isOn: $isDarkMode, label: {
                    Text("Dark mode").foregroundColor(Color("Word")).font(.custom("Roboto", size: 20))
                }).onChange(of: isDarkMode, perform: {_ in
                    ModeManagement.shared.handleMode(darkMode: isDarkMode, system: isUsedSystem)
                })
            }.foregroundColor(Color("blue")).font(.custom("Roboto", size: 28)).padding()
        }.frame(maxHeight: .infinity).navigationTitle("Choose Mode")
        
    }
}
