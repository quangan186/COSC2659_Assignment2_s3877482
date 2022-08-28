//
//  Settings.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 26/08/2022.
//

import SwiftUI
import Foundation
import UIKit


class SystemThemeManager {
    
    static let shared = SystemThemeManager()
    
    private init() {
        
    }
    
    func handleTheme(darkMode: Bool, system: Bool) {
        
        guard !system else {
            UIApplication.shared.windows.first?.overrideUserInterfaceStyle = .unspecified
            
            return
        }
        
        
        UIApplication.shared.windows.first?.overrideUserInterfaceStyle = darkMode ? .dark : .light
    }
}


struct Settings: View{
    @Binding var modeName: String
    @Binding var darkMode:Bool
    @Binding var useSystem:Bool
    
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
            
            Section(header: Text("Display Settings").font(.custom("Roboto", size: 28)).foregroundColor(Color("blue")).fontWeight(.semibold)) {
                                Toggle(isOn: $darkMode, label: {
                                    Text("Dark mode")
                                }).onChange(of: darkMode, perform: {_ in
                                    SystemThemeManager.shared.handleTheme(darkMode: darkMode, system: useSystem)
                                })
                                
                                Toggle(isOn: $useSystem, label: {
                                    Text("Use system settings")
                                }).onChange(of: useSystem, perform: {_ in
                                    SystemThemeManager.shared.handleTheme(darkMode: darkMode, system: useSystem)
                                })
            }.padding()
                        }
                    }
                }
        
    

