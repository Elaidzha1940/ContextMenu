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
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                }
                
                Text("Basketball or Football ?")
                    .font(.system(size: 20, weight: .bold, design: .rounded))

                Text("Play")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
            }
            .shadow(color: .white, radius: 10, x: 5, y: 5)
            .foregroundColor(.white)
            .padding()
            .background(Color("Bg"))
            .cornerRadius(20)
            .shadow(color: .black, radius: 1, x: 5, y: 5)
            .contextMenu(ContextMenu(menuItems: {
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    HStack {
                        Label("Both", image: "basketball.fill")
//                        Image(systemName: "basketball.fill")
//                            .font(.system(size: 20, weight: .bold, design: .rounded))
//                        Image(systemName: "football.fill")
//                            .font(.system(size: 20, weight: .bold, design: .rounded))
                    }
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    HStack {
                        Text("Basketball")
                    }
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    HStack {
                        Text("Football")

                    }
                })
            }))
        }
    }
}

#Preview {
    ContentView()
}
