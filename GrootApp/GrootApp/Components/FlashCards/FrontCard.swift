//
//  FrontCard.swift
//  GrootApp
//
//  Created by José Miguel Guerrero Jiménez on 10/12/25.
//

import SwiftUI

struct FrontCard: View {
    var body: some View {
            VStack(spacing: 20) {
                Text("Meaning:")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.black)

                Text("A playful way to tell someone to get started.")
                    .font(.body.italic())
                    .padding(.horizontal)
                    .foregroundStyle(Color.black)
                Text("Example:")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.black)

                Text("Let's get this show on the road!")
                    .font(.body.italic())
                    .padding(.horizontal)
                    .foregroundStyle(Color.black)

                HStack(spacing: 1) {
                    Image("CactusMX")
                        .resizable()
                        .frame(width: 80, height: 100)
                    Image("CactusMX")
                        .resizable()
                        .frame(width: 120, height: 150)
                    Image("CactusMX")
                        .resizable()
                        .frame(width: 80, height: 100)
                }
            }
        }
}

#Preview {
    FrontCard()
}
