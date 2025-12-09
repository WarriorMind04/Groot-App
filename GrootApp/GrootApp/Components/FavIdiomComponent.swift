//
//  FavIdiomComponent.swift
//  GrootApp
//
//  Created by José Miguel Guerrero Jiménez on 09/12/25.
//

import SwiftUI

struct FavIdiomComponent: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.mainGreen, lineWidth: 6)
                )
                .cornerRadius(20)
                .padding()
                .shadow(radius: 10)
            
                //.offset(x: 0, y: -10)
                .frame(width: 400, height: 180)
                //.border(Color.black)
            HStack{
                VStack{
                    Text("Spanish")
                        .foregroundColor(.black)
                        .bold()
                    Divider()
                        //.padding()
                        .frame(width: 100)
                    
                    Text("Camarón que se duerme...")
                        .foregroundColor(.black)
                        .font(.caption)
                }
                VStack{
                    Text("English")
                        .foregroundColor(.black)
                        .bold()
                    Text("Camarón que se duerme...")
                        .foregroundColor(.black)
                        .font(.caption)
                }
               
            }
           
                            
                
        }
    }
}

#Preview {
    FavIdiomComponent()
}
