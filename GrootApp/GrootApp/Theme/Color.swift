//
//  Color.swift
//  GrootApp
//
//  Created by Estrella Verdiguel on 14/12/25.
//

import SwiftUI

extension Color {
   
    init(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double(rgb & 0xFF) / 255.0

        self.init(red: r, green: g, blue: b)
    }
}

extension Color {
    static let board = Color(hex: "52A07D")
    static let text = Color(hex: "898989")
    static let borde = Color(hex: "223027")
}


