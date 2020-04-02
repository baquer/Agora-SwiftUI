//
//  ContentView.swift
//  SwiftUIAgora
//
//  Created by Syed on 08/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var selection: Int? = nil
    var body: some View {
        NavigationView {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                imageView()
                welcomeView()
                Spacer()
                NavigationLink(destination: SignUpView(), tag: 1, selection: $selection) {
                    Button(action: {self.selection = 1}) {
                    signUpButtonContent()
                }
                }
                .padding(10)
                NavigationLink(destination: LoginView(), tag: 2, selection: $selection) {
                Button(action: {self.selection = 2}) {
                    logInButtonContent()
                }
                }
            .padding(10)
            connectText()
                .padding(10)
                Button(action: {
                    
                }) {
                    facebookButtonContent()
                }
                Spacer()
            }
        .padding()
        }
        .navigationBarTitle(Constants.navigationTitle.home)
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Welcome text view

struct welcomeView: View {
    var body: some View {
        return Text(Constants.labels.agoraVote)
        .font(.largeTitle)
        .fontWeight(.semibold)
        .foregroundColor(.white)
        .padding(.bottom, 75)
    }
}

// Logo Image View

struct imageView: View {
    var body: some View {
        return Image(Constants.imageName.logo)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 150, height: 150)
        .clipped()
        .cornerRadius(150)
        .padding(.bottom, 5)
    }
}

// Sign Up Button Content

struct signUpButtonContent: View {
    var body: some View {
        return Text(Constants.buttonsLabels.signUp)
        .font(.headline)
        .foregroundColor(.white)
        .padding()
        .frame(width: 350, height: 50)
            .background(Color(hex: Constants.colorHexValue.green))
        .cornerRadius(15.0)
    }
}

//LogIn Button Content

struct logInButtonContent: View {
    var body: some View {
        return Text(Constants.buttonsLabels.logIn)
        .font(.headline)
        .foregroundColor(.white)
        .padding()
        .frame(width: 350, height: 50)
            .background(Color(hex: Constants.colorHexValue.yellow))
        .cornerRadius(15.0)
    }
}

// Connect with lebel

struct connectText: View {
    var body: some View {
        return Text(Constants.labels.connectWith)
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
    }
}

// Facebook button content

struct facebookButtonContent: View {
    var body: some View {
        return Text(Constants.buttonsLabels.facebook)
        .font(.headline)
        .foregroundColor(.white)
        .padding()
        .frame(width: 250, height: 40)
            .background(Color.blue)
        .cornerRadius(15.0)
    }
}

