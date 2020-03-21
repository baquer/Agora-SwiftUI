//
//  ForgotPassword.swift
//  SwiftUIAgora
//
//  Created by Syed on 16/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI

struct ForgotPassword: View {
    
    @Environment(\.presentationMode) var presentation
    
    @State var username: String = ""
    
    var body: some View {
            ZStack {
                Color.black
                .edgesIgnoringSafeArea(.all)
                VStack {
                    forgotImageView()
                    messageText()
                    bodyText()
                    Spacer()
//                    TextField("Username", text: $username)
//                    .padding()
//                    .background(lightGreyColor)
//                    .cornerRadius(5.0)
//                    .padding(.bottom, 30)
//                    .frame(width: 380, height: 0)
                    CustomTextField(placeHolder: "User Name", value: $username, lineColor: .black, width: 1)
                        .colorInvert()
                        .frame(width: 380)
                    Button(action: {
                        print("Button tapped")
                    }) {
                       sendLinkButtonContent()
                    }.padding()
                    Spacer()
                    Spacer()
                        .navigationBarTitle("Reset Password", displayMode: .large)
                }
            }
        
    }
}

struct ForgotPassword_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPassword()
    }
}

struct forgotImageView: View {
    var body: some View {
        return Image("ForgotP")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 150, height: 150)
        .clipped()
        .cornerRadius(150)
        .padding(.bottom, 5)
    }
}

struct messageText: View {
    var body: some View {
        return Text("Please enter your user name")
            .font(.title)
            .fontWeight(.semibold)
            .padding(.bottom, 40)
            .foregroundColor(.white)
            .frame(alignment: .topLeading)
    }
}

struct bodyText: View {
    var body: some View {
        return Text("We will send a verification link to your registered email address")
            .font(.subheadline)
            .fontWeight(.semibold)
            .padding(.bottom, 40)
            .foregroundColor(.white)
            .frame(alignment: .topLeading)
    }
}

struct sendLinkButtonContent: View {
    var body: some View {
        return Text("Reset Link")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color(hex: 0xFFBE00))
            .cornerRadius(15.0)
    }
}

struct CustomTextField: View {
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

struct CustomPasswordTextField: View {
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



