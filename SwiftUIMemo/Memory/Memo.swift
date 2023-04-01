//
//  Memo.swift
//  SwiftUIMemo
//
//  Created by 이명진 on 2023/04/01.
//

import Foundation
import SwiftUI

// List에 바인딩 하기 위해서 Identifiable 채택, Memo를 편집할 때 뷰를 자동으로 업데이트 하기 위해서 ObservableObject채택
class Memo: Identifiable, ObservableObject {
    // Identifiable에서 요구하는 속성
    let id: UUID
    // 새로운 값을 저장할 때마다 바인딩 되어있는 UI가 자동으로 업데이트 된다.
    @Published var content: String
    let insertDate: Date
    
    init(content: String, insertDate: Date = Date.now) {
        id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
}
