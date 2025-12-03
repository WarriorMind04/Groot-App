//
//  GeminiResponse.swift
//  GrootApp
//
//  Created by José Miguel Guerrero Jiménez on 03/12/25.
//

import Foundation

struct GeminiResponse: Codable {
    let success: Bool
    let text: String?
    let error: String?
}
