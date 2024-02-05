//
//  ContentView.swift
//  Travel Discovery
//
//  Created by Abdelrahman Shehab on 05/02/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                DiscoverCategoriesView()
            }
            .navigationTitle("Discover")
        }
    }
}

#Preview {
    ContentView()
}

struct DiscoverCategoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(0...4, id: \.self) { _ in
                    VStack(spacing: 8, content: {
                        Spacer()
                            .frame(width: 50, height: 50)
                            .background(.gray)
                            .cornerRadius(.infinity)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2.0)
                        Text("Art")
                            .font(.system(size: 12, weight: .semibold, design: .default))
                        
                    })
                }
                
            }
            .padding(.horizontal)
            .scrollIndicators(.hidden)
            
        }
    }
}
