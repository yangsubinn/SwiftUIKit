//
//  CustomButtonStyle.swift
//  SwiftUIKit
//
//  Created by 양수빈 on 2023/07/20.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    private var type: ButtonType
    @Binding var state: ButtonState
    
    init(type: ButtonType = ButtonType(size: .large, form: .square, title: .text), state: Binding<ButtonState>) {
        self.type = type
        self._state = state
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.black)
            .frame(width: UIScreen.main.bounds.width*type.size.ratio, height: 62)
            .background(state.color)
            .cornerRadius(type.form == .round ? 30 : 6)
            .shadow(color: Color(.systemGray4).opacity(0.6), radius: 4)
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 1, trailing: 0))
    }
}

//struct CustomButton_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomButton()
//    }
//}
