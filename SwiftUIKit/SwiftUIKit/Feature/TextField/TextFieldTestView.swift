//
//  TextFieldTestView.swift
//  SwiftUIKit
//
//  Created by 양수빈 on 2023/07/21.
//

import SwiftUI
import ComposableArchitecture

struct TextFieldTestView: View {
    let store: StoreOf<TextFieldFeature>
    
    @FocusState private var isFocused: Bool
    @Environment(\.colorScheme) var colorTheme
    
    @State var nameTextField: String = ""
    @State var hobbyTextField: String = ""
    @State var isTapped: Bool = false
    @State var buttonState: ButtonState = .disable
    
    var body: some View {
        WithViewStore(store) { viewStore in
            ZStack {
                colorTheme == .dark ? Color.black : Color.white
                
                VStack(spacing: 40) {
                    CustomTextField(textfield: $nameTextField, placeholder: "이름을 입력해주세요", type: .basic, maxCount: 20)
                        .padding()
                    
                    CustomTextField(textfield: $hobbyTextField, placeholder: "취미를 입력해주세요", type: .title("취미 정보"), buttonType: .other("checkmark"))
                        .padding()
                    
                    Button("입력하면 활성화") {
                        print("탭탭탭")
                    }
                    .buttonStyle(CustomButtonStyle(state: $buttonState))
                }
            }
            .onChange(of: [self.nameTextField, self.hobbyTextField], perform: { newValue in
                if newValue[0].count > 0 && newValue[1].count > 0 {
                    buttonState = .enable
                } else {
                    buttonState = .disable
                }
            })
            .onTapGesture {
                viewStore.send(.onTapGesture)
            }
        }
    }
}

struct TextFieldTestView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldTestView(
            store: Store(initialState: TextFieldFeature.State(),
                         reducer: TextFieldFeature())
        )
    }
}
