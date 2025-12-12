//
//  CategoryCulture.swift
//  GrootApp
//
//  Created by José Miguel Guerrero Jiménez on 12/12/25.
//

import SwiftUI

struct CategoryCulture: View {
    @State var isModalOpened: Bool = false
    @Binding var categoryTitle: String
    
    var body: some View {
        ZStack {
            // Background shadow card (the one slightly behind)
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.blueSecondary)
                .frame(height: 120)
                .offset(y: 6)
            
            // Foreground white card
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.white)
                .shadow(color: Color.black.opacity(0.15), radius: 4, x: 0, y: 3)
                .frame(height: 120)
                .overlay(
                    HStack {
                        VStack(alignment: .leading, spacing: 8) {
                            Text(categoryTitle)
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                           
                        }
                        Spacer()
                        
                        Button(action: {
                            isModalOpened.toggle()
                        }) {
                            Text("VIEW MORE")
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .padding(.horizontal, 16)
                                .padding(.vertical, 8)
                                .background(Color.blueSecondary)
                                .clipShape(Capsule())
                        }
                    }
                    .padding(.horizontal, 24)
                    .sheet(isPresented: $isModalOpened){
                        CategoryModal()
                    }
                )
        }
        .padding(.horizontal)
    }
}

#Preview {
    CategoryCulture(categoryTitle: .constant("Music"))
    // Or explicitly:
    // CategoryCulture(isModalOpened: false, categoryTitle: .constant("Music"))
}
