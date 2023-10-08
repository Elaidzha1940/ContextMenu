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
    @State var backgroundColor: Color = Color("Bg")
    
    var body: some View {
        
        ZStack {
            Color(backgroundColor)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 20) {
                  
                HStack {
                    Text("Basketball")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                    Image(systemName: "basketball.fill")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                }
                
                HStack {
                    Text("Football")
                        .font(.system(size: 20, weight: .bold, design: .rounded))

                    Image(systemName: "football.fill")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                }
                
                Text("Both")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
            }
            .shadow(color: .white, radius: 10, x: 5, y: 5)
            .foregroundColor(.white)
            .padding()
            .background(backgroundColor)
            .cornerRadius(20)
            .shadow(color: .black, radius: 10, x: 10, y: 10)
            .contextMenu(menuItems: {
                
                Button(action: {
                    backgroundColor = .orange.opacity(0.7)
                }, label: {
                    Label("Basketball", systemImage: "basketball.fill")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                })
                
                Button(action: {
                    backgroundColor = .green.opacity(0.5)
                }, label: {
                    Text("Football")
                    Image(systemName: "football.fill")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                })
                
                Button(action: {
                    backgroundColor = .mint.opacity(0.7)
                }, label: {
                    HStack {
                        Text("Both")
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                    }
                })
            })
        }
    }
}

#Preview {
    ContentView()
}
