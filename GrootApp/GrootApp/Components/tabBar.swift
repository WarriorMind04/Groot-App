//
//  tabBar.swift
//  GrootApp
//
//  Created by José Miguel Guerrero Jiménez on 03/12/25.
//

import SwiftUI

struct tabBar: View {
    var body: some View {
        
        TabView() {
            HomeView().tabItem {
                Label("Home", systemImage: "house.fill")
            }.tag(1)
            FavsView().tabItem {
                Label("Favs", systemImage: "heart.fill")
            }.tag(2)
            PractiveView().tabItem {
                Label("Practice", systemImage: "pencil.and.outline")
            }.tag(3)
        }
    }
}

#Preview {
    tabBar()
}
