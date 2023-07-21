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

enum ButtonShape {
    case square
    case round
    
    var radius: CGFloat {
        switch self {
        case .square:
            return 6
        case .round:
            return 30
        }
    }
}

enum ButtonState {
    case disable
    case enable
    
    var bgColor: Color {
        switch self {
        case .disable:
            return .gray
        case .enable:
            return .yellow
        }
    }
    
    var fgColor: Color {
        switch self {
        case .disable:
            return .white
        case .enable:
            return .black
        }
    }
}

struct ButtonType {
    var size: ButtonSize
    var shape: ButtonShape
}
