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
                
                PopularDestinationsView()
                
                PopularRestaurantsView()
                
                TrendingCreatorsView()
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

struct PopularDestinationsView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Popular Destination")
                    .font(.system(size: 14, weight: .bold, design: .default))
                Spacer()
                Text("See All")
                    .font(.system(size: 14, weight: .bold, design: .default))
            }
            .padding()
            
            ScrollView(.horizontal) {
                HStack(spacing: 8, content: {
                    ForEach(0...5, id: \.self) { _ in
                        Spacer()
                            .frame(width: 125, height: 150)
                            .background(.gray)
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2.0)
                            .padding(.bottom)
                    }
                    
                })
                .padding(.horizontal)
            }
        }
    }
}

struct PopularRestaurantsView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Popular Places To Eat")
                    .font(.system(size: 14, weight: .bold, design: .default))
                Spacer()
                Text("See All")
                    .font(.system(size: 14, weight: .bold, design: .default))
            }
            .padding()
            
            ScrollView(.horizontal) {
                HStack(spacing: 8, content: {
                    ForEach(0...5, id: \.self) { _ in
                        Spacer()
                            .frame(width: 200, height: 64)
                            .background(.gray)
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2.0)
                            .padding(.bottom)
                    }
                    
                })
                .padding(.horizontal)
            }
        }
    }
}

struct TrendingCreatorsView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Trending Creators")
                    .font(.system(size: 14, weight: .bold, design: .default))
                Spacer()
                Text("See All")
                    .font(.system(size: 14, weight: .bold, design: .default))
            }
            .padding()
            
            ScrollView(.horizontal) {
                HStack(spacing: 8, content: {
                    ForEach(0...15, id: \.self) { _ in
                        Spacer()
                            .frame(width: 50, height: 50)
                            .background(.gray)
                            .cornerRadius(.infinity)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2.0)
                            .padding(.bottom)
                    }
                    
                })
                .padding(.horizontal)
            }
        }
    }
}
