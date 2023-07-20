//
//  hideKeyboard.swift
//  SwiftUIKit
//
//  Created by 양수빈 on 2023/07/21.
//

import SwiftUI

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(
            #selector(UIResponder.resignFirstResponder),
            to: nil, from: nil, for: nil)
    }
}
