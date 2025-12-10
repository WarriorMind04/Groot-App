//
//  FavsView.swift
//  GrootApp
//
//  Created by José Miguel Guerrero Jiménez on 03/12/25.
//

import SwiftUI

struct FavsView: View {
    var body: some View {
        ScrollView{
            FavIdiomComponent()
            FavIdiomComponent()
            FavIdiomComponent()
        }
        
    }
}

#Preview {
    FavsView()
}
