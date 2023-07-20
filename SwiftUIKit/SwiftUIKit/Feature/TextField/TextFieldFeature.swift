//
//  TextFieldFeature.swift
//  SwiftUIKit
//
//  Created by 양수빈 on 2023/07/21.
//

import SwiftUI
import ComposableArchitecture

struct TextFieldFeature: ReducerProtocol {
    struct State: Equatable {
        
    }
    
    enum Action: Equatable {
        case onTapGesture
    }
    
    var body: some ReducerProtocolOf<Self> {
        Reduce { state, action in
            switch action {
            case .onTapGesture:
                UIApplication.shared.sendAction(
                    #selector(UIResponder.resignFirstResponder),
                    to: nil, from: nil, for: nil
                )
                return .none
            }
        }
    }
}
