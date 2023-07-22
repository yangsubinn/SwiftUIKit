//
//  AlertTestView.swift
//  SwiftUIKit
//
//  Created by 양수빈 on 2023/07/22.
//

import SwiftUI

struct AlertTestView: View {
    @State private var isPresented: Bool = false
    @State private var alertButtonTapped: Bool = false
    
    @State private var isPresentedTwo: Bool = false
    @State private var alertButtonTappedTwo: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 40) {
                Button("타이틀 alert") {
                    isPresented.toggle()
                }
                
                Button("타이틀 + 설명 alert") {
                    isPresentedTwo.toggle()
                }
            }
            
            CustomAlert(isPresented: $isPresented,
                        title: "타이틀만 있는 alert",
                        rightButtonAction: $alertButtonTapped)
            
            CustomAlert(isPresented: $isPresentedTwo,
                        title: "둘다 있는 alert",
                        description: "타이틀도 있고 설명도 있는 alert입니다.\n 안녕하세용 반갑습니당",
                        rightButtonAction: $alertButtonTappedTwo)
        }
        
    }
}

struct AlertTestView_Previews: PreviewProvider {
    static var previews: some View {
        AlertTestView()
    }
}
