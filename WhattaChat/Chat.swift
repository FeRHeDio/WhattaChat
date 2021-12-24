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
            Message("Hello there", type: .Sent, date: Date())
        ], hasUnreadMessage: true),
    
        Chat(person: Person(name: "Emilie Lost", image: "Ellipse-21"), messages: [
            Message("Hi, I'm Emilie. I like to eat tomatoes", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1))
        ], hasUnreadMessage: false),
        
        Chat(person: Person(name: "Ying Soduku", image: "Ellipse-36"), messages: [
            Message("You have to regret about what you just said", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Because this are offending words", type: .Sent, date: Date(timeIntervalSinceNow: -86321 * 3)),
            Message("You know what I'm talking about buddy?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2))
        ], hasUnreadMessage: true),
        
        Chat(person: Person(name: "Manuelle Bored", image: "Ellipse-38"), messages: [
            Message("This isn't funny at all", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3))
        ], hasUnreadMessage: false),
    
        Chat(person: Person(name: "Julia Kingston", image: "Ellipse-46"), messages: [
            Message("Hey you never replied my messages, there is something wrong with you???", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1))
        ], hasUnreadMessage: true),
        
        Chat(person: Person(name: "Mario Adrioni", image: "Ellipse-25"), messages: [
            Message("Talk to your wife about this, you cannot be such a pussy.. ", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 6))
        ], hasUnreadMessage: true),
        
        Chat(person: Person(name: "Gina Lolo", image: "Ellipse-30"), messages: [
            Message("Seriously¿¿?¿?¿?! ", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 7))
        ], hasUnreadMessage: true)
    ]
}
