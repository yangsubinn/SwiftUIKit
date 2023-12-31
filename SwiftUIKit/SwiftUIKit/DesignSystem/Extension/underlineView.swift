//
//  underlineView.swift
//  SwiftUIKit
//
//  Created by 양수빈 on 2023/07/21.
//

import SwiftUI

struct UnderlineView: ViewModifier {
    let spacing: CGFloat
    let height: CGFloat
    let color: Color
    
    func body(content: Content) -> some View {
        VStack(spacing: spacing) {
            content
            Rectangle()
                .frame(height: height)
                .foregroundColor(color)
        }
    }
}

extension View {
    func underlined(spacing: CGFloat = 3,
                    height: CGFloat = 1,
                    color: Color = .gray) -> some View {
        self.modifier(UnderlineView(spacing: spacing, height: height, color: color))
    }
}

