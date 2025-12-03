//
//  GeminiService.swift
//  GrootApp
//
//  Created by José Miguel Guerrero Jiménez on 03/12/25.
//

import Foundation

class GeminiService {
    static let shared = GeminiService()
    private let baseURL = "https://backend-we-are-groot-dbtmk9sop-jose-miguels-projects-4169b721.vercel.app/explain_idiom"
    private init() {}
    
    func generateText(prompt: String) async throws -> String {
        guard let url = URL(string: "\(baseURL)?prompt=\(prompt)") else {
            throw APIError.invalidURL
        }
        var request = URLRequest(url: url)
                request.httpMethod = "POST"
                request.setValue("application/json", forHTTPHeaderField: "Content-Type")
                
                let body = GenerateRequest(prompt: prompt)
                request.httpBody = try JSONEncoder().encode(body)
                
                let (data, response) = try await URLSession.shared.data(for: request)
                
                guard let httpResponse = response as? HTTPURLResponse,
                      httpResponse.statusCode == 200 else {
                    throw APIError.badResponse
                }
                
                let geminiResponse = try JSONDecoder().decode(GeminiResponse.self, from: data)
                
                if geminiResponse.success, let text = geminiResponse.text {
                    return text
                } else {
                    throw APIError.serverError(geminiResponse.error ?? "Unknown error")
                }
    }
    
    
}

enum APIError: LocalizedError {
    case invalidURL
    case badResponse
    case serverError(String)
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Invalid URL"
        case .badResponse:
            return "Bad response from server"
        case .serverError(let message):
            return "Server error: \(message)"
        }
    }
}
