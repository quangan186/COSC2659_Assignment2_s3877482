//
//  ContentView.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 17/08/2022.
//

import SwiftUI

struct ContentView: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.init(Color("blue"))]
    }
    var body: some View {
        NavigationView{
            Menu()
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension UIViewController {
    open override func awakeAfter(using coder: NSCoder) -> Any? {
        navigationItem.backButtonDisplayMode = .minimal // This will help us to remove text
        return super.awakeAfter(using: coder)
    }
}
