//
//  tabBar.swift
//  GrootApp
//
//  Created by José Miguel Guerrero Jiménez on 03/12/25.
//

import SwiftUI

struct tabBar: View {
    var body: some View {
        
        TabView {
            NavigationStack {
                HomeView()
                    .navigationTitle("Home")
            }
            .tabItem { Label("Home", systemImage: "house.fill") }

            NavigationStack {
                FavsView()
                    .navigationTitle("Favorites")
            }
            .tabItem { Label("Favs", systemImage: "heart.fill") }

            NavigationStack {
                PractiveView()
                    .navigationTitle("Practice")
            }
            .tabItem { Label("Practice", systemImage: "pencil.and.outline") }
        }
    }
}

#Preview {
    tabBar()
}
