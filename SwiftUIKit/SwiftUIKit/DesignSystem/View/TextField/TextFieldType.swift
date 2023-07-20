//
//  TextFieldType.swift
//  SwiftUIKit
//
//  Created by 양수빈 on 2023/07/21.
//

import Foundation

enum TextFieldType {
    case basic
    case title(String)
}

enum TextFieldState {
    case inactive
    case active
}

enum TextFieldButton {
    case delete
    case other(String)
}
