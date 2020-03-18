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
                ScrollView(Axis.Set.vertical, showsIndicators: true) {
                VStack {
                    Spacer()
                    UserImage()
                    SignUpText()
                    Spacer()
                    CustomTextField(placeHolder: "First Name", value: $firstName, lineColor: .white, width: 1)
                    .frame(width:380)
                    .foregroundColor(Color.white)
                    CustomTextField(placeHolder: "Last Name", value: $lastName, lineColor: .white, width: 1)
                    .frame(width:380)
                    .foregroundColor(Color.white)
                    CustomTextField(placeHolder: "User Name", value: $userName, lineColor: .white, width: 1)
                    .frame(width:380)
                    .foregroundColor(Color.white)
                    CustomTextField(placeHolder: "Email", value: $email, lineColor: .white, width: 1)
                    .frame(width:380)
                    .foregroundColor(Color.white)
                    CustomPasswordTextField(placeHolder: "Password", value: $password, lineColor: .white, width: 1)
                    .frame(width: 380)
                    .foregroundColor(Color.white)
                    CustomTextField(placeHolder: "Write Your Question Here", value: $securityQuestions, lineColor: .white, width: 1)
                    .frame(width:380)
                    .foregroundColor(Color.white)
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}


struct SignUpText: View {
    var body: some View {
        return Text("Sign Up")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 75)
            .foregroundColor(.white)
    }
}
