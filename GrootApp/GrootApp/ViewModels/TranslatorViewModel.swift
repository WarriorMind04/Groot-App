//
//  TranslatorViewModel.swift
//  GrootApp
//
//  Created by José Miguel Guerrero Jiménez on 03/12/25.
//

import Foundation
import Combine

class TranslatorViewModel: ObservableObject {
    let apiService = GemAPIService()

    func getExplanation(for idiom: String){
        apiService.explainIdiom(idiom: idiom){ result in
            switch result {
            case .success(let explanation):
                print("Explanation received: \(explanation.explanation)")
                case .failure(let error):
                print("Error fetching idiom: \(error)")
            }
        }
    }
    
}

