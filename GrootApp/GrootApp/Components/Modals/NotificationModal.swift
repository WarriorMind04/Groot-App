//
//  NotificationModal.swift
//  GrootApp
//
//  Created by José Miguel Guerrero Jiménez on 12/12/25.
//

import SwiftUI

struct NotificationModal: View {
    var body: some View {
        VStack {
            FlashCards()
            
            timer()
        }
    }
}

#Preview {
    NotificationModal()
}
