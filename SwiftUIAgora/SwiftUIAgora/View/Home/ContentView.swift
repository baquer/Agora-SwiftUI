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
                Button(action: {print("Button tapped")}) {
                    facebookButtonContent()
                }
                Spacer()
            }
        .padding()
        }
        .navigationBarTitle("Home", displayMode: NavigationBarItem.TitleDisplayMode.large)
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct welcomeView: View {
    var body: some View {
        return Text("Agora Vote")
        .font(.largeTitle)
        .fontWeight(.semibold)
        .foregroundColor(.white)
        .padding(.bottom, 75)
    }
}

struct imageView: View {
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

struct signUpButtonContent: View {
    var body: some View {
        return Text("Sign Up")
        .font(.headline)
        .foregroundColor(.white)
        .padding()
        .frame(width: 350, height: 50)
            .background(Color(hex: 0x005229))
        .cornerRadius(15.0)
    }
}

struct logInButtonContent: View {
    var body: some View {
        return Text("Log In")
        .font(.headline)
        .foregroundColor(.white)
        .padding()
        .frame(width: 350, height: 50)
            .background(Color(hex: 0xFFBE00))
        .cornerRadius(15.0)
    }
}
struct connectText: View {
    var body: some View {
        return Text("Or Connect With")
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
    }
}
struct facebookButtonContent: View {
    var body: some View {
        return Text("facebook")
        .font(.headline)
        .foregroundColor(.white)
        .padding()
        .frame(width: 250, height: 40)
            .background(Color.blue)
        .cornerRadius(15.0)
    }
}

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
