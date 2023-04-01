//
//  SwiftUIMemoApp.swift
//  SwiftUIMemo
//
//  Created by 이명진 on 2023/04/01.
//

import SwiftUI

@main
struct SwiftUIMemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
