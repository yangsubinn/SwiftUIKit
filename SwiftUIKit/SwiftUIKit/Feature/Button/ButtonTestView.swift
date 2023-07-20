//
//  ButtonTestView.swift
//  SwiftUIKit
//
//  Created by 양수빈 on 2023/07/21.
//

import SwiftUI

struct ButtonTestView: View {
    @State var state: ButtonState = .enable
    @State var statetwo: ButtonState = .disable
    @State var statethree: ButtonState = .enable
    @State var isTapped = false
    @State var isTappedtwo = true
    @State var isTappedThree = true
    @State var textfield = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("ButtonTest")
                .font(.title)
            
            CustomButton(type: ButtonType(size: .small, form: .round, title: .textWithIcon),
                         isTapped: $isTappedtwo, state: $statetwo, title: "버튼 또 누르기")
            
            CustomButton(type: ButtonType(size: .medium, form: .round, title: .text),
                         isTapped: $isTappedThree, state: $statethree, title: "중간 버튼")
            
            CustomButton(isTapped: $isTapped, state: $state, title: "버튼 누르기")
        }
        .padding()
    }
}

struct ButtonTestView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTestView()
    }
}
