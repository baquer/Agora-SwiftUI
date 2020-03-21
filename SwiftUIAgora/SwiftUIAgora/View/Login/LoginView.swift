//
//  CircleImage.swift
//  SwiftUIAgora
//
//  Created by Syed on 08/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct LoginView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var selection: Int? = nil
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        ZStack {
        Color.black
            .edgesIgnoringSafeArea(.all)
        VStack {
            Spacer()
            UserImage()
            WelcomeText()
            Spacer()
//            TextField("Username", text: $username)
//                .padding()
//                .background(lightGreyColor)
//                .cornerRadius(5.0)
//                .padding(.bottom, 30)
//                .frame(width: 380, height: 50)
            CustomTextField(placeHolder: "Username", value: $username, lineColor: .black, width: 1)
                .frame(width:380)
                .colorInvert()
//            SecureField("Password", text: $password)
//                .padding()
//                .background(lightGreyColor)
//                .cornerRadius(5.0)
//                .padding(.bottom, 20)
//                .frame(width: 380, height: 50)
            CustomPasswordTextField(placeHolder: "Password", value: $password, lineColor: .black, width: 1).colorInvert()
                .frame(width: 380)
                .padding(30)
            NavigationLink(destination: TabBarSwiftUIView(), tag: 1, selection: $selection) {
            Button(action: {
                self.selection = 1

            }) {
               LoginButtonContent()
            }
            }
            NavigationLink(destination: ForgotPassword(), tag: 2, selection: $selection) {
            Button(action: {
                self.selection = 2
            }) {
                ForgotButtonContent()
            }
            } .navigationBarTitle("Log In", displayMode: .large)
            Spacer()
            Spacer()
        }
        .padding()
    }
    }
}
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct WelcomeText: View {
    var body: some View {
        return Text("Log In")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 75)
            .foregroundColor(.white)
    }
}

struct UserImage: View {
    var body: some View {
        return Image("iTunesArtwork-1")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 5)
    }
}

struct LoginButtonContent: View {
    var body: some View {
        return Text("Log In")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color(hex: 0xFFBE00))
            .cornerRadius(15.0)
    }
}

struct ForgotButtonContent: View {
    var body: some View {
        return Text("Forgot Password?")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 380, height: 60, alignment: .bottomTrailing)
            .background(Color.black)
            .cornerRadius(15.0)
    }
}
