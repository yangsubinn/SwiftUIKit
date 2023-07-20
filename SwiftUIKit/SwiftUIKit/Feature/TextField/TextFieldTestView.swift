//
//  TextFieldTestView.swift
//  SwiftUIKit
//
//  Created by 양수빈 on 2023/07/21.
//

import SwiftUI

struct TextFieldTestView: View {
    @State var textfield = ""
    
    var body: some View {
        TextField("아무거나 입력하세요", text: $textfield)
            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
            .background(.gray.opacity(0.2))
            .padding()
    }
}

struct TextFieldTestView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldTestView()
    }
}
