//
//  AboutUs.swift
//  SwiftUIAgora
//
//  Created by Syed on 24/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI

struct AboutUs: View {
    let aboutUsURL = URL(string: "https://agora-frontend.herokuapp.com")
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                VStack(alignment: .center) {
                    Text("About Us").font(.title).fontWeight(.bold).padding(30).colorInvert()
                    imageView()
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("Agora vote is a voting platform where users can create elections and invite friends to cast their votes. It supports a wide range of voting algorithms some of which are Majority, Egalitarian, Australian STV just to name a few").font(.callout).fontWeight(.bold).colorInvert()
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
struct contactUsButtonContent: View {
    var body: some View {
        return Text("Learn More")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color(hex: 0xFFBE00))
            .cornerRadius(15.0)
    }
}

