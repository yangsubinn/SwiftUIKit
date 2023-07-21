//
//  BottomSheetTestView.swift
//  SwiftUIKit
//
//  Created by 양수빈 on 2023/07/21.
//

import SwiftUI

struct BottomSheetTestView: View {
    @State var buttonState: ButtonState = .enable
    @State var closeButtonState: ButtonState = .enable
    @State var isShowing = false
    
    let screenSize: CGRect = UIScreen.main.bounds
    
    var heightRadio: CGFloat {
        UIScreen.main.bounds.height > 800 ? 2.6 : 2
    }
    
    var offset: CGFloat {
        isShowing ? 0 : UIScreen.main.bounds.height / heightRadio
    }
    
    var body: some View {
        ZStack {
            CustomButton(action: {
                if !isShowing {
                    isShowing.toggle()
                }
            }, label: {
                Text("Medium BottomSheet")
            }, state: $buttonState)
            
            BottomSheet(isShowing: $isShowing, type: .medium, content: {
                VStack {
                    Text("bottom sheet 입니더")
                    
                    CustomButton(action: {
                        isShowing.toggle()
                    }, label: {
                        Image(systemName: "xmark")
                        Text("바텀시트 닫기")
                    }, state: $closeButtonState)
                    
                }
                
            })
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct BottomSheetTestView_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetTestView()
    }
}
