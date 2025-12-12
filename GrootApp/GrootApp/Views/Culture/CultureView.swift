//
//  PractiveView.swift
//  GrootApp
//
//  Created by José Miguel Guerrero Jiménez on 09/12/25.
//

import SwiftUI

struct CultureView: View {
   // let challenge: ChallengeDetail
    
    
    
    var body: some View {
        ScrollView (){
            CategoryCulture(categoryTitle: .constant("Places"))
            CategoryCulture(categoryTitle: .constant("Music"))
            CategoryCulture(categoryTitle: .constant("Food"))
            CategoryCulture(categoryTitle: .constant("Traditions"))
        }
        
    }
}

#Preview {
    CultureView()
}
