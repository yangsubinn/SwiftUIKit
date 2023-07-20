//
//  ButtonTestView.swift
//  SwiftUIKit
//
//  Created by 양수빈 on 2023/07/21.
//

import SwiftUI

struct ButtonTestView: View {
    @State var stateone: ButtonState = .disable
    @State var statetwo: ButtonState = .enable
    @State var statethree: ButtonState = .enable
    @State var isTapped = false
    @State var isTappedtwo = true
    @State var isTappedThree = true
    @State var textfield = ""
    @State var isPresented = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Toggle") {
                stateone = (stateone == .disable) ? .enable : .disable
            }
            .buttonStyle(
                CustomButtonStyle(
                    type: ButtonType(size: .small, form: .round, title: .textWithIcon),
                    state: $stateone)
            )
            
            NavigationLink(destination: TempView()) {
                Text("NavigationLink")
            }
            .buttonStyle(
                CustomButtonStyle(
                type: ButtonType(size: .medium, form: .round, title: .text),
                state: $statetwo)
            )
            
            Button("Present Sheet") {
                isPresented.toggle()
            }
            .buttonStyle(
                CustomButtonStyle(
                    type: ButtonType(size: .large, form: .square, title: .text),
                    state: $statethree)
            )
            .sheet(isPresented: $isPresented) {
                TempView()
            }
        }
        .padding()
    }
}

struct ButtonTestView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTestView()
    }
}
