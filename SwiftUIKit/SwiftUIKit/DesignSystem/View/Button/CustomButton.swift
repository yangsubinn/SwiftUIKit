//
//  CustomButton.swift
//  SwiftUIKit
//
//  Created by 양수빈 on 2023/07/21.
//

import SwiftUI

struct CustomButton<Label: View>: View {
    private let action: () -> ()
    private let label: () -> Label
    private let type: ButtonType
    
    @Binding var state: ButtonState
    @State private var pressed: Bool = false
    
    init(action: @escaping () -> (),
         label: @escaping () -> Label,
         state: Binding<ButtonState>,
         type: ButtonType = ButtonType(size: .large, shape: .square)) {
        self.action = action
        self.label = label
        self._state = state
        self.type = type
    }
    
    var body: some View {
        Button(action: action) {
            label()
                .allowsHitTesting(false)
        }
        .buttonStyle(CustomButtonStyle(type: type, state: $state))
    }
}

//struct CustomButton_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomButton()
//    }
//}
