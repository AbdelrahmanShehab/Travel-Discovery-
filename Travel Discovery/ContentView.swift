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

struct Catrgory: Hashable {
    let name: String
    let imageName: String
}

struct DiscoverCategoriesView: View {
    
    let catrgories: [Catrgory] = [
        .init(name: "Art", imageName: "paintpalette.fill"),
        .init(name: "Sport", imageName: "sportscourt.fill"),
        .init(name: "Live Events", imageName: "music.mic"),
        .init(name: "Food", imageName: "takeoutbag.and.cup.and.straw.fill"),
        .init(name: "History", imageName: "books.vertical.fill")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 8) {
                ForEach(catrgories, id: \.self) { category in
                    VStack(spacing: 8, content: {
                        Image(systemName: category.imageName)
                            .foregroundColor(.white)
                            .frame(width: 50, height: 50)
                            .background(.gray)
                            .cornerRadius(.infinity)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2.0)
                        Text(category.name)
                            .font(.system(size: 12, weight: .semibold, design: .default))
                    })
                    .frame(width: 68)
                }
                
            }
            .padding(.horizontal)
            .scrollIndicators(.hidden)
            
        }
    }
}
struct Destination: Hashable {
    let name, country, imageName: String
}

struct PopularDestinationsView: View {
    @Environment(\.colorScheme) var colorScheme
    
    let destinations: [Destination] = [
        .init(name: "Paris", country: "France", imageName: "eiffel_tower"),
        .init(name: "Tokyo", country: "Japan", imageName: "japan"),
        .init(name: "New York", country: "USA", imageName: "new_york"),
    ]
    
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
                    ForEach(destinations, id: \.self) { destination in
                        VStack(alignment: .leading, spacing: 0) {
                            Image(destination.imageName)
                                .resizable()
                                .frame(width: 125, height: 125)
                                .scaledToFill()
                                .cornerRadius(4.0)
                                .padding(.horizontal, 6)
                                .padding(.vertical, 6)
                            
                            Text(destination.name)
                                .font(.system(size: 12, weight: .semibold))
                                .padding(.horizontal, 6)
                            
                            Text(destination.country)
                                .font(.system(size: 12, weight: .semibold))
                                .padding(.horizontal, 6)
                                .padding(.bottom, 8)
                                .foregroundColor(.secondary)
                        }
                        .background(Color.init( white: colorScheme == .dark ? 0.45 : 0.85, opacity: 1))
                        .cornerRadius(5)
                        .shadow(color: .gray, radius: 2.5, x: 0.0, y: 2.0)
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
