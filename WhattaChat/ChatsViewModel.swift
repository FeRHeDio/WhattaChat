//
//  ChatsViewModel.swift
//  WhattaChat
//
//  Created by Fernando Putallaz on 22/12/2021.
//

import Foundation

class ChatsViewModel: ObservableObject {
    @Published var chats = Chat.sampleData
    
    func getSortedFileredeChats(query: String) -> [Chat] {
        let sortedChats = chats.sorted {
            guard let date1 = $0.messages.last?.date else { return false }
            guard let date2 = $1.messages.last?.date else { return false }
            return date1 > date2
        }
        
        if query == "" {
            return sortedChats
        }
        
        return sortedChats.filter{ $0.person.name.lowercased().contains(query.lowercased()) }
    }
    
    func markAsUnread(_ newValue: Bool, chat: Chat) {
        if let index = chats.firstIndex(where: { $0.id == chat.id }) {
            chats[index].hasUnreadMessage = newValue
        }
    }
}
