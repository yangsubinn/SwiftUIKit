//
//  SheetTestView.swift
//  SwiftUIKit
//
//  Created by 양수빈 on 2023/07/22.
//

import SwiftUI

struct SheetTestView: View {
    @State var isPresented: Bool = false
    @State var closeButtonState: ButtonState = .enable
    
    var body: some View {
        
        Button {
            isPresented.toggle()
        } label: {
            Text("SHEET")
        }
        .sheet(isPresented: $isPresented) {
            VStack(spacing: 20) {
                Text("바텀 시트다")
                
                CustomButton(action: {
                    isPresented.toggle()
                }, label: {
                    Image(systemName: "xmark")
                    Text("바텀시트 닫기")
                }, state: $closeButtonState)
            }
            .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
            .presentationDetents([.fraction(0.5), .fraction(0.2)])
            .presentationDragIndicator(.visible)
        }
    }
}

struct SheetTestView_Previews: PreviewProvider {
    static var previews: some View {
        SheetTestView()
    }
}
