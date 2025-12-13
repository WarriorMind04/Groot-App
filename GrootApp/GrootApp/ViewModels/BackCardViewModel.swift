//
//  BackCardViewModel.swift
//  GrootApp
//
//  Created by José Miguel Guerrero Jiménez on 13/12/25.
//

import Foundation

@Observable
class BackCardViewModel {
    
    var currentContent: BackCardContent?
    
    private let contents: [BackCardContent] = [
        BackCardContent(
            type: .challenge,
            title: "Challenge",
            text: "Go and ask for a coffee in Italian ☕️"
        ),
        BackCardContent(
            type: .funFact,
            title: "Fun Fact",
            text: "In Italy, cappuccino is only drunk in the morning 🇮🇹"
        ),
        BackCardContent(
            type: .suggestion,
            title: "Suggestion",
            text: "Try greeting people with a light cheek kiss in Italy 🤝"
        ),
        BackCardContent(
            type: .funFact,
            title: "Fun Fact",
            text: "In Japan, slurping noodles is a compliment 🍜"
        )
    ]
    
    func randomize() {
        currentContent = contents.randomElement()
    }
}
