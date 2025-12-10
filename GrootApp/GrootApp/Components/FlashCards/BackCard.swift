//
//  BackCard.swift
//  GrootApp
//
//  Created by José Miguel Guerrero Jiménez on 10/12/25.
//

import SwiftUI

struct BackCard: View {
    var body: some View {
            VStack(spacing: 20) {
                ZStack {
                    Circle()
                        .frame(width: 300, height: 300)
                        .foregroundColor(.blue)
                        .opacity(0.3)
                    
                    Text("A darle que es mole de olla")
                        .foregroundStyle(Color.black)
                }
                
            }
        }
}

#Preview {
    BackCard()
}
