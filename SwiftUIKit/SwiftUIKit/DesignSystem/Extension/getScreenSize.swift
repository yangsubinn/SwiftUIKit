//
//  getScreenSize.swift
//  SwiftUIKit
//
//  Created by 양수빈 on 2023/07/20.
//

import SwiftUI

struct SizePreferenceKey: PreferenceKey {
    static var defaultValue: CGSize = .zero
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
        value = nextValue()
    }
}

extension View {
    func getScreenSize() -> CGSize {
        var screenSize: CGSize = .zero
        self.onPreferenceChange(SizePreferenceKey.self) { value in
            screenSize = value
        }
        return screenSize
    }
}

