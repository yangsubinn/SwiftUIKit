//
//  ButtonType.swift
//  SwiftUIKit
//
//  Created by 양수빈 on 2023/07/20.
//

import Foundation
import SwiftUI

enum ButtonSize {
    case small
    case medium
    case large
    
    var ratio: CGFloat {
        switch self {
        case .small:
            return 0.5
        case .medium:
            return 0.7
        case .large:
            return 0.9
        }
    }
}

enum ButtonForm {
    case square
    case round
}

enum ButtonTitle {
    case text
    case textWithIcon
}

enum ButtonState {
    case disable
    case enable
    case highlighted
    
    var color: Color {
        switch self {
        case .disable:
            return .gray
        case .enable:
            return .yellow
        case .highlighted:
            return .yellow.opacity(0.6)
        }
    }
}

struct ButtonType {
    var size: ButtonSize
    var form: ButtonForm
    var title: ButtonTitle
}
