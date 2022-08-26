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
    @State var modeName = ""
    @State var easy = false;
    @State var hard = false;
    var body: some View {
        ZStack(alignment: .center){
            VStack{
                Text("Player Name").font(.custom("Roboto", size: 32)).fontWeight(.semibold).padding().foregroundColor(Color("Word")).onAppear(perform: {
                    playSound(sound: "gameplay", type: "mp4")
                })
                VStack{
                    TextField("Type your name", text: $name).padding(.horizontal).frame(height: 60).cornerRadius(48).foregroundColor(Color("Word")).border(Color("Word"), width: 1)
                }.padding(.horizontal).frame(height: 60).cornerRadius(50)
                    HStack{
                        Button(action: {
                            easy = true
                            hard = false
                            modeName = "Easy"
                        }, label: {
                            Text("Easy").foregroundColor(.white).frame(maxWidth: .infinity, maxHeight: 60)
                        }).background(Color("blue")).cornerRadius(50)
                        
                        Button(action: {
                            easy = false
                            hard = true
                            modeName = "Hard"
                        }, label: {
                            Text("Hard").foregroundColor(.white).frame(maxWidth: .infinity, maxHeight: 60)
                        }).background(Color("red")).cornerRadius(50)
                    }.padding(.vertical)
                VStack{
                    if validInput(name: name) && (easy || hard){
                        NavigationLink(destination: Gameplay(playerName: name, easyMode: $easy, hardMode: $hard), label: {
                        Text("Continue").frame(maxWidth: .infinity, maxHeight: 60).foregroundColor(Color.white)
                        }).background(Color("blue")).cornerRadius(50).simultaneousGesture(TapGesture().onEnded{
                                names.addName(playerName: PlayerName(name: name))
                            modes.addMode(mode: Mode(mode: modeName))
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
