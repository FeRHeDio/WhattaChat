//
//  ContentView.swift
//  WhattaChat
//
//  Created by Fernando Putallaz on 21/12/2021.
//

import SwiftUI

struct ContentView: View {
    let chats = Chat.sampleData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(chats) { chat in
                    ChatRow(chat: chat)
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
