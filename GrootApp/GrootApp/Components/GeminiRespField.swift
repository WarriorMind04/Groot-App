//
//  GeminiRespField.swift
//  GrootApp
//
//  Created by José Miguel Guerrero Jiménez on 03/12/25.
//

import SwiftUI

struct GeminiRespField: View {
    @State var text: String = "Gemini Response here"
    var body: some View {
        ZStack{
            
            Rectangle()
                .frame(width: 330, height: 200)
                .foregroundColor(.blue)
                .cornerRadius(20)
            Text(text)
        }
        
    }
}

#Preview {
    GeminiRespField()
}
