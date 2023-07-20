//
//  ContentView.swift
//  SwiftUIKit
//
//  Created by 양수빈 on 2023/07/20.
//

import SwiftUI

struct ContentView: View {
    @State var state: ButtonState = .enable
    @State var statetwo: ButtonState = .disable
    @State var isTapped = false
    @State var isTappedtwo = true
    
    var body: some View {
        VStack(spacing: 20) {
            Text("안녕하세요?")
            
            CustomButton(isTapped: $isTapped, state: $state, title: "버튼 누르기")
            
            CustomButton(type: ButtonType(size: .small, form: .round, title: .textWithIcon),
                         isTapped: $isTappedtwo, state: $statetwo, title: "버튼 또 누르기")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
