//
//  BottomSheetType.swift
//  SwiftUIKit
//
//  Created by 양수빈 on 2023/07/21.
//

import Foundation

enum BottomSheetType {
    case small
    case medium
    case large
    
    var heightRadio: CGFloat {
        switch self {
        case .small:
            return 3
        case .medium:
            return 2.1
        case .large:
            return 1.6
        }
    }
}
