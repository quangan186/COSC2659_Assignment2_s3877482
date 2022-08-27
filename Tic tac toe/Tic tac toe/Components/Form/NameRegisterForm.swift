//
//  NameRegisterForm.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 21/08/2022.
//

import SwiftUI

import AVFoundation

struct NameRegisterForm: View {
    @Binding var name: String
    @State var names = Names()
    @State var modes = Modes()
    @Binding var modeName: String
    
    var body: some View {
        ZStack(alignment: .center){
            VStack{
                Text("Player Name").font(.custom("Roboto", size: 32)).fontWeight(.semibold).padding().foregroundColor(Color("Word")).onAppear(perform: {
                    playSound(sound: "gameplay", type: "mp4")
                })
                VStack{
                    TextField("Type your name", text: $name).padding(.horizontal).frame(height: 60).cornerRadius(48).foregroundColor(Color("Word")).border(Color("Word"), width: 1)
                }.padding(.horizontal).frame(height: 60).cornerRadius(50)
                VStack{
                    if validInput(name: name) && (modeName != ""){
                        NavigationLink(destination: Gameplay(playerName: name, modeName: modeName), label: {
                        Text("Continue").frame(maxWidth: .infinity, maxHeight: 60).foregroundColor(Color.white)
                        }).background(Color("blue")).cornerRadius(50).simultaneousGesture(TapGesture().onEnded{
                                names.addName(playerName: PlayerName(name: name))
                        })
                    }
                }.padding(.vertical)
            }
        }.frame(maxHeight: .infinity, alignment: .center).background(Color("Mode")).navigationBarHidden(true)
    }
    func validInput(name: String) -> Bool {
        if name.isEmpty || name.prefix(1) == " "{
            return false
        }
        return true
    }
}
