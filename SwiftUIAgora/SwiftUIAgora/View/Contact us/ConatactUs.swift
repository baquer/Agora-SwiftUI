//
//  ConatactUs.swift
//  SwiftUIAgora
//
//  Created by Syed on 24/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI

struct ConatactUs: View {
    let gitLabURL = URL(string: Constants.APIURL.gitLabURL)
    let gitterURL = URL(string: Constants.APIURL.gitterURL)
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                VStack(alignment: .center) {
                    Text(Constants.labels.contactUs).font(.title).fontWeight(.bold).padding(30).colorInvert()
                    contactUsImageView()
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text(Constants.messages.contactUsMessage).font(.callout).fontWeight(.bold).colorInvert()
                }
                Spacer()
                VStack(spacing: 20) {
                    Button(action: {
                        UIApplication.shared.open(self.gitterURL!)

                    }) {
                       gitterButtonContent()
                    }
                    Button(action: {
                        UIApplication.shared.open(self.gitLabURL!)

                    }) {
                       gitLabButtonContent()
                    }
                }
                Spacer()
            }
        }
    }
}

struct ConatactUs_Previews: PreviewProvider {
    static var previews: some View {
        ConatactUs()
    }
}

// Contact Us Image View

struct contactUsImageView: View {
    var body: some View {
        return Image(Constants.imageName.contactUs)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 150, height: 150)
        .clipped()
        .padding(.bottom, 5)
    }
}

// Gitter Button Content

struct gitterButtonContent: View {
    var body: some View {
        return Text(Constants.buttonsLabels.gitter)
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color(hex: Constants.colorHexValue.yellow))
            .cornerRadius(15.0)
    }
}

// Gitlab Button Content

struct gitLabButtonContent: View {
    var body: some View {
        return Text(Constants.buttonsLabels.gitLab)
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color(hex: Constants.colorHexValue.yellow))
            .cornerRadius(15.0)
    }
}

