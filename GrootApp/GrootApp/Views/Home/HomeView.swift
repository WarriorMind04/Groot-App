//
//  HomeView.swift
//  GrootApp
//
//  Created by José Miguel Guerrero Jiménez on 03/12/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            AppTextFieldView()
                .padding()
            GeminiRespField(text: "abduzcan")
        }
        
        
    }
}

#Preview {
    HomeView()
}
