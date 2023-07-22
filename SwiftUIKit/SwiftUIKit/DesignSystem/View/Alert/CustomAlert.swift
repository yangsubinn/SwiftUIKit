//
//  CustomAlert.swift
//  SwiftUIKit
//
//  Created by 양수빈 on 2023/07/22.
//

import SwiftUI

struct CustomAlert : View {
    @Binding private var isPresented: Bool
    @Binding private var rightButtonTapped: Bool
    
    private let screenSize: CGRect = UIScreen.main.bounds
    private var alertWidth: CGFloat {
        screenSize.width - 40
    }
    private var title: String
    private var description: String?
    private var leftButtonTitle: String
    private var rightButtonTitle: String
    
    init(isPresented: Binding<Bool>,
         title: String, description: String? = nil,
         leftButtonTitle: String = "아니오", rightButtonTitle: String = "네",
         rightButtonAction: Binding<Bool>) {
        self._isPresented = isPresented
        self.title = title
        self.description = description
        self.leftButtonTitle = leftButtonTitle
        self.rightButtonTitle = rightButtonTitle
        self._rightButtonTapped = rightButtonAction
    }
    
    var body: some View {
        ZStack {
            BackgroundDimmerView(isPresented: $isPresented)
            
            VStack(spacing: 20) {
                Spacer()
                
                Text(title)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                
                if let description {
                    Text(description)
                        .multilineTextAlignment(.center)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                } else {
                    Spacer()
                }
                
                HStack {
                    Button {
                        print("leftButton tapped")
                        isPresented.toggle()
                    } label: {
                        Text(leftButtonTitle)
                            .frame(width: alertWidth/2,
                                   height: 52)
                    }
                    
                    Button {
                        print("rightButton tapped")
                        rightButtonTapped.toggle()
                        isPresented.toggle()
                    } label: {
                        Text(rightButtonTitle)
                            .frame(width: alertWidth/2,
                                   height: 52)
                    }
                }
                .frame(width: alertWidth)
            }
            .padding()
            .frame(width: alertWidth)
            .frame(minHeight: screenSize.height * 0.2,
                   maxHeight: screenSize.height * 0.24)
            .background(.white)
            .cornerRadius(20)
            .opacity(isPresented ? 1 : 0)
            .transition(.opacity.animation(.easeInOut))
            .animation(.easeInOut(duration: 0.2), value: self.isPresented)
        }
    }
}

//struct CustomAlert_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomAlert(title: "로그아웃하시겠어요?", description: "정말로 로그아웃 하시겠어요??")
//        
//        CustomAlert(title: "설명이 없는 타이틀이랍니다 설명이 없는 타이틀이랍니다")
//    }
//}
