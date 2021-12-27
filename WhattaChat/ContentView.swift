//
//  ContentView.swift
//  WhattaChat
//
//  Created by Fernando Putallaz on 21/12/2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var chatsViewModel = ChatsViewModel()
    
    @State private var query = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(chatsViewModel.getSortedFileredeChats(query: query)) { chat in
                    ZStack {
                        ChatRow(chat: chat)
                        NavigationLink {
                            ChatView(chat: chat)
                                .environmentObject(chatsViewModel)
                        } label: {
                            EmptyView()
                        }
                        .buttonStyle(PlainButtonStyle())
                        .frame(width: 0)
                        .opacity(0)
                    }
                    .swipeActions (edge: .leading, allowsFullSwipe: true) {
                        Button(action: {
                            chatsViewModel.markAsUnread(!chat.hasUnreadMessage , chat: chat)
                        }) {
                            if chat.hasUnreadMessage {
                                Label("Read", systemImage: "text.bubble")
                            } else {
                                Label("Unread", systemImage: "circle.fill ")
                            }
                        }
                        .tint(.blue)
                    }
                }
            }
            .listStyle(PlainListStyle())
            .searchable(text: $query)
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
