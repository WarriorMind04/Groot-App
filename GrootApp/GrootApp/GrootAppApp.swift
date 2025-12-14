//
//  GrootAppApp.swift
//  GrootApp
//
//  Created by José Miguel Guerrero Jiménez on 02/12/25.
//

import SwiftUI
import WidgetKit

@main
struct GrootAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear{
                    //copyJSONToAppGroup()
                    //printFunFacts()
                    FunFactStore.copyJSONToAppGroup()
                    WidgetCenter.shared.reloadTimelines(ofKind: "FunFactWidget")
                    
                }
        }
    }
}

func printFunFacts() {
    let facts = FunFactStore.load()
    print("Loaded facts:", facts)
}

func copyJSONToAppGroup() {
    guard let bundleURL = Bundle.main.url(forResource: "funfacts", withExtension: "json"),
          let groupURL = FileManager.default.containerURL(forSecurityApplicationGroupIdentifier: "group.com.grootapp.widgets")?
                        .appendingPathComponent("funfacts.json") else { return }

    if !FileManager.default.fileExists(atPath: groupURL.path) {
        do {
            try FileManager.default.copyItem(at: bundleURL, to: groupURL)
            print("JSON copiado al App Group ✅")
        } catch {
            print("Error copiando JSON:", error)
        }
    }
}
