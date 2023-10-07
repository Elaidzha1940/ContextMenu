//  /*
//
//  Project: ContextMenu
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 07.10.2023
//
//  */

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(Color("Bg"))
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    Image(systemName: "basketball.fill")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                    Image(systemName: "football.fill")
                }
                
                Text("Basketball or Football ?")
                    .font(.system(size: 20, weight: .bold, design: .rounded))

                Text("Play")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
            }
            .shadow(color: .black, radius: 10, x: 10, y: 10)
            .padding()
            .foregroundColor(.white)
            .background(Color("Bg"))
            .cornerRadius(20)
        }
    }
}

#Preview {
    ContentView()
}
