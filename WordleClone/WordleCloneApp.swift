//
//  WordleCloneApp.swift
//  WordleClone
//
//  Created by Tim Bryant on 6/14/24.
//

import SwiftUI

@main
struct WordleCloneApp: App {
    @StateObject var dm = WordleDataModel()
    
    var body: some Scene {
        WindowGroup {
            GameView()
                .environmentObject(dm)
        }
    }
}
