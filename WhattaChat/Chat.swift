//
//  Chat.swift
//  WhattaChat
//
//  Created by Fernando Putallaz on 21/12/2021.
//

import Foundation

struct Chat: Identifiable {
    var id: UUID { person.id }
    let person: Person
    let messages: [Message]
    var hasUnreadMessage = false
}

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let image: String
}

struct Message: Identifiable {
    enum MessageType {
        case Sent, Received
    }

    let date: Date
    let id = UUID()
    let text: String
    let type: MessageType
    
    init(_ text: String, type: MessageType, date: Date) {
        self.text = text
        self.date = date
        self.type = type
    }
    
    init(_ text: String, type: MessageType) {
        self.init(text, type: type, date: Date())
    }
}

extension Chat {
    static let sampleData = [
        Chat(person: Person(name: "Charlie Bucket", image: "Ellipse-13"), messages: [
            Message("Hello there", type: .Sent, date: Date(timeIntervalSinceNow: -86450 * 3))
        ], hasUnreadMessage: true)
        
    ]
}
