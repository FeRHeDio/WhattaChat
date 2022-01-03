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
            GeometryReader { reader in
                ScrollView {
                    getMessagesView(viewWidth: reader.size.width)
                        .padding(.horizontal)
                }
            }
            .background(.yellow)
        }
        .padding(.top, 1)
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            chatsViewModel.markAsUnread(false, chat: chat)
        }
    }
    
    let columns = [GridItem(.flexible(minimum: 10))]
    
    func getMessagesView(viewWidth: CGFloat) -> some View {
        LazyVGrid(columns: columns, spacing: 0) {
            ForEach(chat.messages) { message in
                let isReceived = message.type == .Received
                HStack {
                    ZStack {
                        Text(message.text)
                            .padding(.horizontal)
                            .padding(.vertical, 12)
                            .background(isReceived ? .black.opacity(0.2) : .green.opacity(0.9))
                            .cornerRadius(13)
                            
                    }
                    .frame(width: viewWidth * 0.7, alignment: isReceived ? .leading : .trailing)
                    .padding(.vertical)
//                    .background(.blue)
                }
                .frame(maxWidth: .infinity, alignment: isReceived ? .leading : .trailing)
                .id(message.id)
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(chat: Chat.sampleData[5])
            .environmentObject(ChatsViewModel())
    }
}
