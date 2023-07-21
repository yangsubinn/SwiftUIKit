//
//  BottomSheet.swift
//  SwiftUIKit
//
//  Created by 양수빈 on 2023/07/21.
//

import SwiftUI

struct BottomSheet<Content: View>: View {
    @Binding private var isShowing: Bool
    @State private var dimmerAnimate = false
    
    private let content: () -> Content
    private let screenSize: CGRect = UIScreen.main.bounds
    private var type: BottomSheetType
    private var offset: CGFloat {
        isShowing ? 0 : screenSize.height / type.heightRadio
    }
    
    init(isShowing: Binding<Bool>,
         type: BottomSheetType,
         @ViewBuilder content: @escaping () -> Content) {
        self._isShowing = isShowing
        self.type = type
        self.content = content
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.black
                .opacity(isShowing ? 0.2 : 0)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.1)) {
                        isShowing.toggle()
                    }
                }
            
            VStack {
                Rectangle()
                    .frame(width: 80, height: 6)
                    .cornerRadius(8)
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 12, leading: 0, bottom: 8, trailing: 0))
                
                Spacer()
                
                content()
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                
                Spacer()
            }
            .frame(width: screenSize.width,
                   height: screenSize.height / type.heightRadio)
            .modifier(BottomSheetModifier())
            .offset(y: offset)
            .transition(AnyTransition.move(edge: .bottom))
            .animation(.easeInOut(duration: 0.2), value: self.isShowing)
        }
    }
}

struct BottomSheetModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color.white)
            .cornerRadius(20, corners: .topLeft)
            .cornerRadius(20, corners: .topRight)
            .shadow(color: Color(.systemGray4).opacity(0.6), radius: 4)
    }
}

//struct BottomSheet_Previews: PreviewProvider {
//    static var previews: some View {
//        BottomSheet(content: {
//            Text("안녕하세요")
//
//        })
//    }
//}
