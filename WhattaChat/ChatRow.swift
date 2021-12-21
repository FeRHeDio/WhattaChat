//
//  ChatRow.swift
//  WhattaChat
//
//  Created by Fernando Putallaz on 21/12/2021.
//

import SwiftUI

struct ChatRow: View {
    var body: some View {
        HStack (spacing: 20) {
            Image(systemName: "person")
                .resizable()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            
            ZStack {
                VStack (alignment: .leading, spacing: 5) {
                    HStack {
                        Text("John Weird")
                            .bold()
                        
                        Spacer()
                        
                        Text("12/21/2021")
                    }
                    
                    HStack {
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ")
                            .foregroundColor(.gray)
                            .lineLimit(2)
                            .frame(height: 50, alignment: .top)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.trailing, 40)
                    }
                    
                }
            }
            
        }
        .frame(height: 80)
    }
}

struct ChatRow_Previews: PreviewProvider {
    static var previews: some View {
        ChatRow()
    }
}
