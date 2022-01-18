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
    var messages: [Message]
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
            Message("Because this are offending words", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("You know what I'm talking about buddy?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2))
        ], hasUnreadMessage: false),
        
        Chat(person: Person(name: "Manuelle Bored", image: "Ellipse-38"), messages: [
            Message("This isn't funny at all", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3))
        ], hasUnreadMessage: false),
    
        Chat(person: Person(name: "Julia Kingston", image: "Ellipse-46"), messages: [
            Message("Hey you never replied my messages, there is something wrong with you???", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1))
        ], hasUnreadMessage: true),
        
        Chat(person: Person(name: "Mario Adrioni", image: "Ellipse-25"), messages: [
            Message("Talk to your wife about this, you cannot be such a pussy.. ", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 6)),
            Message("But Mario are you talking seriously? I can believe what you just said. ", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 5)),
            Message("Indeed, you're such a pussy.. yay", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 5)),
            Message("And let me remind you that you owe me 4 dinners.. moron", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 4)),
            Message("I don't know how in hell my sister want to be with a moron like you.. ", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 4)),
            Message("Anywhay, have a great weekend :lol: ", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Go to hell old man and burn in pain", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Fuck off", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
        ], hasUnreadMessage: true),
        
        Chat(person: Person(name: "Gina Lolo", image: "Ellipse-30"), messages: [
            Message("Seriously¿¿?¿?¿?! ", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 7)),
            Message ("Hey Hakim", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("I am just developing an WhatsApp Clone App and it is so hard to create a fake chat conversation. Can you help me out with it?", type: .Sent, date: Date(timeIntervalSinceNow: 86400 * 3)),
            Message ("Please I need your help ®", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message ("Sure how can I help you flo?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message ("Maybe you send me some \"good) jokes ©", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message ("Sure I can do that. No problem @@", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message ("What do you call a fish with no eyes?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message ("Hmm, Idk", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("A fsh", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("OMG so bad @@", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message ("Let me try one", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message ("There are 10 types of people in this world, those who understand binary and those who don't", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("This joke is sooo old haha", type: .Received, date: Date()),
        ], hasUnreadMessage: true)
    ]
}
