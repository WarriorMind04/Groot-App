//
//  TranslatorViewModel.swift
//  GrootApp
//
//  Created by José Miguel Guerrero Jiménez on 03/12/25.
//

import Foundation
import Combine

@Observable
class TranslatorViewModel: ObservableObject {
    let apiService = GemAPIService()

    var explanationn: String = "Loading..."
    
    func getExplanation(for idiom: String){
        apiService.explainIdiom(idiom: idiom){ result in
            switch result {
            case .success(let explanation):
                self.explanationn = explanation.explanation
                print("Explanation received: \(explanation.explanation)")
                case .failure(let error):
                self.explanationn = "Error \(error.localizedDescription)"
                print("Error fetching idiom: \(error)")
            }
        }
    }
    
}

