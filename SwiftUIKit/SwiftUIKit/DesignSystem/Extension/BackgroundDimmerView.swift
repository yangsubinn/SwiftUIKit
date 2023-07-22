//
//  backgroundDimmerView.swift
//  SwiftUIKit
//
//  Created by 양수빈 on 2023/07/22.
//

import SwiftUI

struct BackgroundDimmerView: View {
    @Binding private var isPresented: Bool
    
    init(isPresented: Binding<Bool>) {
        self._isPresented = isPresented
    }
    
    var body: some View {
        Color.black
            .opacity(isPresented ? 0.2 : 0)
            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.1)) {
                    isPresented.toggle()
                }
            }
    }
}
