//
//  FavsView.swift
//  GrootApp
//
//  Created by José Miguel Guerrero Jiménez on 03/12/25.
//

import SwiftUI

struct FunFactsView: View {
    var body: some View {
        VStack {
            Spacer()
            FunFact()
            Spacer()
            Text("1/20")
            Image(systemName: "square.and.arrow.up.fill")
                .resizable()
                .frame(width: 35, height: 40)
        }
        
    }
}

#Preview {
    FunFactsView()
}
