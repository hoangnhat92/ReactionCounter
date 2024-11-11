//
//  ContentView.swift
//  ReactionCounter
//
//  Created by nhat on 11/11/24.
//

import SwiftUI
import Inject

struct ContentView: View {
    
    @State private var thumbsUpCount = 0
    @State private var heartCount = 0
    @State private var laughCount = 0
    
    @ObserveInjection var inject
    
    var body: some View {
        VStack {
           Text("React to this post!")
               .font(.title)
               .padding(.bottom, 20)
           
           HStack(spacing: 40) {
               ReactionButton(emoji: "👍", count: $thumbsUpCount)
               ReactionButton(emoji: "❤️", count: $heartCount)
               ReactionButton(emoji: "😂", count: $laughCount)               
           }
           .padding()           
           Spacer()
       }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.green)        
        .injectEnabled()
    }
}

struct ReactionButton: View {
    let emoji: String
    @Binding var count: Int
    
    var body: some View {
        VStack {
            Button(action: {
                count += 1
            }) {
                Text(emoji)
                    .font(.largeTitle)
            }
            
            Text("\(count)")
                .font(.headline)
        }
    }
}

extension View {
    func injectEnabled() -> some View {
        #if DEBUG
        return self.enableInjection()
        #else
        return self
        #endif
    }
}

#Preview {
    ContentView()
}
