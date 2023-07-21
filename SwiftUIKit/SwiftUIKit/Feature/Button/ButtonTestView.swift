//
//  ButtonTestView.swift
//  SwiftUIKit
//
//  Created by 양수빈 on 2023/07/21.
//

import SwiftUI

struct ButtonTestView: View {
    @State var stateone: ButtonState = .enable
    @State var statetwo: ButtonState = .disable
    @State var statethree: ButtonState = .enable
    @State var isPresented = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            /// 기본 버튼
            CustomButton(action: {
                isPresented.toggle()
            }, label: {
                Text("CustomButton (default)")
            }, state: $stateone)
            .sheet(isPresented: $isPresented) {
                TempView()
            }
            
            /// small, round
            CustomButton(action: {
                statetwo = (statetwo == .disable) ? .enable : .disable
            }, label: {
                Text("CustomButton (small, round)")
            }, state: $statetwo, type: ButtonType(size: .small, shape: .round))
            
            /// medium, round
            NavigationLink(destination: TempView()) {
                Text("CusomButtonStyle (medium, round)")
            }
            .buttonStyle(
                CustomButtonStyle(
                type: ButtonType(size: .medium, shape: .square),
                state: $statethree)
            )
        }
        .padding()
    }
}

struct ButtonTestView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTestView()
    }
}
