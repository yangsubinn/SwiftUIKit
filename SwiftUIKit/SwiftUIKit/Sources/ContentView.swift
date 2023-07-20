//
//  ContentView.swift
//  SwiftUIKit
//
//  Created by 양수빈 on 2023/07/20.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 60) {
                
                Text("SwiftUIKit")
                    .font(.largeTitle)
                
                VStack(spacing: 30) {
                    
                    NavigationLink(destination: ButtonTestView()) {
                        Text("CustomButton")
                    }
                    
                    NavigationLink(destination: TextFieldTestView()) {
                        Text("CustomTextField")
                    }
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
