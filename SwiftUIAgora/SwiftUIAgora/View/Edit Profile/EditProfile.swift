//
//  EditProfile.swift
//  SwiftUIAgora
//
//  Created by Syed on 25/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI

struct EditProfile: View {
    
    //Declare variables
    
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
                    VStack(alignment: .center) { Text(Constants.labels.profile).font(.title).fontWeight(.bold).padding(30).colorInvert()
                        userImage().padding(.bottom, 20)
                        Text(Constants.labels.yourDetails).font(.title).fontWeight(.bold).colorInvert()
                    }
                    Spacer()
                    VStack(alignment: .leading) {
                        customTextField(placeHolder: Constants.placeHolderText.userName, value: $userName, lineColor: .black, width: 1)
                        .frame(width:380)
                        .colorInvert()
                        customTextField(placeHolder: Constants.placeHolderText.firstName, value: $firstName, lineColor: .black, width: 1)
                        .frame(width:380)
                        .colorInvert()
                        customTextField(placeHolder: Constants.placeHolderText.lastName, value: $lastName, lineColor: .black, width: 1)
                        .frame(width:380)
                        .colorInvert()
                        customTextField(placeHolder: Constants.placeHolderText.email, value: $email, lineColor: .black, width: 1)
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
                        Text(Constants.labels.passwordSettings).fontWeight(.bold).font(.title).colorInvert()
                    }
                    VStack {
                        customPasswordTextField(placeHolder: Constants.placeHolderText.oldPassword, value: $password, lineColor: .black, width: 1).colorInvert()
                        .frame(width: 380)
                        customPasswordTextField(placeHolder: Constants.placeHolderText.newPassword, value: $newPassword, lineColor: .black, width: 1).colorInvert()
                        .frame(width: 380)
                        customPasswordTextField(placeHolder: Constants.placeHolderText.confirmNewPasword, value: $newPassword, lineColor: .black, width: 1).colorInvert()
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
// Profile Image of a User

struct userImage: View {
    var body: some View {
        return Image(Constants.imageName.profileImg)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 5)
    }
}
// Update Profile Button Contents

struct updateProfileContent: View {
    var body: some View {
        return Text(Constants.buttonsLabels.updateProfile)
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color(hex: Constants.colorHexValue.yellow))
            .cornerRadius(15.0)
    }
}
// Update Password Button Contents

struct updatePasswordContent: View {
    var body: some View {
        return Text(Constants.buttonsLabels.changePassword)
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color(hex: Constants.colorHexValue.yellow))
            .cornerRadius(15.0)
    }
}

