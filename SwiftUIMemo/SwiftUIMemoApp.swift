//
//  SwiftUIMemoApp.swift
//  SwiftUIMemo
//
//  Created by 이명진 on 2023/04/01.
//

import SwiftUI

@main
struct SwiftUIMemoApp: App {
    // 여러 뷰에서 하나의 하나의 데이터를 공유하기 위해 사용
    @StateObject var store = MemoStore()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store)
        }
    }
}
