//
//  AboutUs.swift
//  SwiftUIAgora
//
//  Created by Syed on 24/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI

struct AboutUs: View {
    let aboutUsURL = URL(string: Constants.APIURL.aboutUsURL)
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                VStack(alignment: .center) {
                    Text(Constants.labels.aboutUS).font(.title).fontWeight(.bold).padding(30).colorInvert()
                    imageView()
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text(Constants.messages.aboutUsMessage).font(.callout).fontWeight(.bold).colorInvert()
                    }
                Spacer()
                VStack {
                Button(action: {
                        UIApplication.shared.open(self.aboutUsURL!)
                
                }) {
                contactUsButtonContent()
                  }
               }
               Spacer()
            }
        }
    }
}

struct AboutUs_Previews: PreviewProvider {
    static var previews: some View {
        AboutUs()
    }
}

// Learn More Button Content

struct contactUsButtonContent: View {
    var body: some View {
        return Text(Constants.buttonsLabels.learnMore)
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color(hex: Constants.colorHexValue.yellow))
            .cornerRadius(15.0)
    }
}

