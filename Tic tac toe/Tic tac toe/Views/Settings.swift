////
////  Settings.swift
////  Tic tac toe
////
////  Created by Bui Quang An on 26/08/2022.
////
//
////import SwiftUI
////import Foundation
////import UIKit
////
////struct Settings: View {
////    
////    @Binding var isDarkMode:Bool
////    @Binding var isUsedSystem:Bool
////    
////    var body: some View {
////        NavigationView {
////            Form {
////                Section(header: Text("Display Settings")) {
////                    Toggle(isOn: $isDarkMode, label: {
////                        Text("Dark mode")
////                    }).onChange(of: isDarkMode, perform: {_ in
////                        ModeManagement.shared.handleMode(darkMode: isDarkMode, system: isUsedSystem)
////                    })
////                    
////                    Toggle(isOn: $isUsedSystem, label: {
////                        Text("Use system settings")
////                    }).onChange(of: isUsedSystem, perform: {_ in
////                        ModeManagement.shared.handleMode(darkMode: isDarkMode, system: isUsedSystem)
////                    })
////                }
////            }
////        }
////    }
////}
////
////class ModeManagement {
////    
////    static let shared = ModeManagement()
////    
////    private init() {
////        
////    }
////    
////    func handleMode(darkMode: Bool, system: Bool) {
////        
////        guard !system else {
////            UIApplication.shared.windows.first?.overrideUserInterfaceStyle = .unspecified
////            
////            return
////        }
////        
////        UIApplication.shared.windows.first?.overrideUserInterfaceStyle = darkMode ? .dark : .light
////    }
////    
////}
//
//import SwiftUI
//
//struct Settings: View{
//    @Binding var modeName: String
//    @Binding var easy: Bool;
//    @Binding var hard: Bool;
//    var body: some View{
//        HStack{
//            Button(action: {
//                easy = true
//                hard = false
//                modeName = "Easy"
//            }, label: {
//                Text("Easy").foregroundColor(.white).frame(maxWidth: .infinity, maxHeight: 60)
//            }).background(Color("blue")).cornerRadius(50)
//            
//            Button(action: {
//                easy = false
//                hard = true
//                modeName = "Hard"
//            }, label: {
//                Text("Hard").foregroundColor(.white).frame(maxWidth: .infinity, maxHeight: 60)
//            }).background(Color("red")).cornerRadius(50)
//        }.padding(.vertical)
//    }
//}
