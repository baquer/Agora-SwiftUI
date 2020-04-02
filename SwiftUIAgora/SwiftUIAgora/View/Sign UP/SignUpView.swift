//
//  SignUpView.swift
//  SwiftUIAgora
//
//  Created by Syed on 18/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI

struct SignUpView: View {
    
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var selection: Int? = nil
    @State var userName: String = ""
    @State var password: String = ""
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    @State var securityAnswer: String = ""
    @State var securityQuestions: String = ""
    
    
    var body: some View {
            ZStack {
                Color.black
                .edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    UserImage()
                    signUpText()
                    Spacer()
                    ScrollView() {
                      VStack {
                        customTextField(placeHolder: Constants.placeHolderText.firstName, value: $firstName, lineColor: .black, width: 1)
                                        .frame(width:380)
                                        .colorInvert()
                        customTextField(placeHolder: Constants.placeHolderText.lastName, value: $lastName, lineColor: .black, width: 1)
                                        .frame(width:380)
                                        .colorInvert()
                        customTextField(placeHolder: Constants.placeHolderText.userName, value: $userName, lineColor: .black, width: 1)
                                        .frame(width:380)
                                        .colorInvert()
                        customTextField(placeHolder: Constants.placeHolderText.email, value: $email, lineColor: .black, width: 1)
                                        .frame(width:380)
                                        .colorInvert()
                        customPasswordTextField(placeHolder: Constants.placeHolderText.password, value: $password, lineColor: .black, width: 1)
                                        .frame(width: 380)
                                        .colorInvert()
                        customTextField(placeHolder: Constants.placeHolderText.securityQuestion, value: $securityQuestions, lineColor: .black, width: 1)
                                        .frame(width:380)
                                        .colorInvert()
                        customTextField(placeHolder: Constants.placeHolderText.securityAnswer, value: $securityQuestions, lineColor: .black, width: 1)
                        .frame(width:380)
                        .colorInvert()
                    }
                }
                    Spacer()
                    VStack {
                        Button(action: {
                        }) {
                            SignUpButtonContent()
                        }
                    }
                    Spacer()
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

// Sign Up label

struct signUpText: View {
    var body: some View {
        return Text(Constants.labels.signUp)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 75)
            .foregroundColor(.white)
    }
}

// Sign Up button content

struct SignUpButtonContent: View {
    var body: some View {
        return Text(Constants.buttonsLabels.signUp)
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color(hex: Constants.colorHexValue.yellow))
            .cornerRadius(15.0)
    }
}
