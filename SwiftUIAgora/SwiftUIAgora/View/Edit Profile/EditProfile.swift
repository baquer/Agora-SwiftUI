//
//  EditProfile.swift
//  SwiftUIAgora
//
//  Created by Syed on 25/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI

struct EditProfile: View {
    @State var userName = ""
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var password = ""
    @State var newPassword = ""
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack(spacing: 20) {
                    VStack(alignment: .center) { Text("Profile").font(.title).fontWeight(.bold).padding(30).colorInvert()
                        userImage().padding(.bottom, 20)
                        Text("Your Details").font(.title).fontWeight(.bold).colorInvert()
                    }
                    Spacer()
                    VStack(alignment: .leading) {
                        CustomTextField(placeHolder: "Username", value: $userName, lineColor: .black, width: 1)
                        .frame(width:380)
                        .colorInvert()
                        CustomTextField(placeHolder: "First Name", value: $firstName, lineColor: .black, width: 1)
                        .frame(width:380)
                        .colorInvert()
                        CustomTextField(placeHolder: "Last Name", value: $lastName, lineColor: .black, width: 1)
                        .frame(width:380)
                        .colorInvert()
                        CustomTextField(placeHolder: "Email id", value: $email, lineColor: .black, width: 1)
                        .frame(width:380)
                        .colorInvert()
                    }
                    Spacer()
                    VStack(alignment: .center) {
                        Button(action: {
                        }) {
                           updateProfileContent()
                        }
                    }
                    Spacer()
                    VStack {
                        Text("Password Settings").fontWeight(.bold).font(.title).colorInvert()
                    }
                    VStack {
                        CustomPasswordTextField(placeHolder: "Old Password", value: $password, lineColor: .black, width: 1).colorInvert()
                        .frame(width: 380)
                        CustomPasswordTextField(placeHolder: "New Password", value: $newPassword, lineColor: .black, width: 1).colorInvert()
                        .frame(width: 380)
                        CustomPasswordTextField(placeHolder: "Confirm New Password", value: $newPassword, lineColor: .black, width: 1).colorInvert()
                        .frame(width: 380)
                    }
                    Spacer()
                    VStack {
                        Button(action: {
                        }) {
                           updatePasswordContent()
                        }
                    }
                }
            }
        }
    }
}

struct EditProfile_Previews: PreviewProvider {
    static var previews: some View {
        EditProfile()
    }
}

struct userImage: View {
    var body: some View {
        return Image("Baq")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 5)
    }
}

struct updateProfileContent: View {
    var body: some View {
        return Text("Update Profile")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color(hex: 0xFFBE00))
            .cornerRadius(15.0)
    }
}

struct updatePasswordContent: View {
    var body: some View {
        return Text("Change Password")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color(hex: 0xFFBE00))
            .cornerRadius(15.0)
    }
}

