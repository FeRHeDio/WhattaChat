//
//  ChatView.swift
//  WhattaChat
//
//  Created by Fernando Putallaz on 24/12/2021.
//

import SwiftUI

struct ChatView: View {
    
    @EnvironmentObject var chatsViewModel: ChatsViewModel
    
    let chat: Chat
    var body: some View {
        VStack(spacing: 0) {
            Text("Something")
        }
        .padding(.top, 1)
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            chatsViewModel.markAsUnread(false, chat: chat)
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(chat: Chat.sampleData[6])
    }
}
