//
//  SpotifyTabView.swift
//  Spotify
//
//  Created by Feyzullah Kodat on 31.07.2024.
//

import SwiftUI

struct SpotifyTabView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label(
                        title: { Text("Anasayfa") },
                        icon: { Image(systemName: "house") }
                    )
                    .tag(0)
                    
                }
            SearchView()
                .tabItem {
                    Label(
                        title: { Text("Arama") },
                        icon: { Image(systemName: "magnifyingglass") }
                    )
                    .tag(1)
                }
            
            MusicLibraryView()
                .tabItem {
                    Label(
                        title: { Text("Arama") },
                        icon: { Image(systemName: "books.vertical") }
                    )
                    .tag(2)
                }
        }
        .tint(.white)
        
    }
}

#Preview {
    SpotifyTabView()
}
