//
//  ContentView.swift
//  WhattaChat
//
//  Created by Fernando Putallaz on 21/12/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0 ..< 10) { item in
                    ChatRow()
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Whatta Chat!")
            .navigationBarItems(trailing: Button(action: {}) {
                Image(systemName: "square.and.pencil")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
