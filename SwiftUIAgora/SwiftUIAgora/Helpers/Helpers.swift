//
//  Helpers.swift
//  SwiftUIAgora
//
//  Created by Syed on 24/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI

struct Helpers: View {
    var body: some View {
        Text("Extension")
    }
}

struct Helpers_Previews: PreviewProvider {
    static var previews: some View {
        Helpers()
    }
}

// Color extension using hex values

extension Color {
    init(hex: Int, alpha: Double = 1) {
        let components = (
            R: Double((hex >> 16) & 0xff) / 255,
            G: Double((hex >> 08) & 0xff) / 255,
            B: Double((hex >> 00) & 0xff) / 255
        )
        self.init(
            .sRGB,
            red: components.R,
            green: components.G,
            blue: components.B,
            opacity: alpha
        )
    }
}

// Custom text field

struct customTextField: View {
    var placeHolder: String
    @Binding var value: String
    var lineColor: Color
    var width: CGFloat

    var body: some View {
        VStack {
            TextField(self.placeHolder, text: $value)
            .padding()
            .font(.title)

            Rectangle().frame(height: self.width)
                .padding(.horizontal, 20).foregroundColor(self.lineColor)
        }
    }
}

// Custom password text field

struct customPasswordTextField: View {
    var placeHolder: String
    @Binding var value: String

    var lineColor: Color
    var width: CGFloat
    

    var body: some View {
        VStack {
            SecureField(self.placeHolder, text: $value)
            .padding()
            .font(.title)

            Rectangle().frame(height: self.width)
                .padding(.horizontal, 20).foregroundColor(self.lineColor)
        }
    }
}

// Multiline Text Fields Custom function.

struct multiline : UIViewRepresentable {
    
    
    @Binding var txt : String
    
    func makeCoordinator() -> multiline.Coordinator {
        
        return multiline.Coordinator(parent1: self)
        
    }
    func makeUIView(context: UIViewRepresentableContext<multiline>) -> UITextView{
        
        let textview = UITextView()
        textview.font = .systemFont(ofSize: 18)
        textview.delegate = context.coordinator
        return textview
    }
    
    func updateUIView(_ uiView: UITextView, context: UIViewRepresentableContext<multiline>) {
        
        uiView.text = txt
    }
    
    class Coordinator : NSObject,UITextViewDelegate{
        
        var parent : multiline
        
        init(parent1 : multiline) {
            
            parent = parent1
        }
        
        func textViewDidChange(_ textView: UITextView) {
            
            self.parent.txt = textView.text
        }
    }
}



