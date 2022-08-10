//
//  TextPlace.swift
//  Elizbar_project
//
//  Created by alta on 8/10/22.
//

import SwiftUI

struct TextPlace: View {
    @Binding var text: String
    let placeHolder : String
    
    init(_ placeHolder : String, text : Binding<String>){
        self.placeHolder = placeHolder
        self._text = text
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            if text.isEmpty{
                Text(placeHolder)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal,8)
                    .padding(.vertical, 12)
            }
            
            TextEditor(text: $text)
                .padding(4)
        }
        .font(.body)
        
    }
}

