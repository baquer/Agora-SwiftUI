//
//  ConatactUs.swift
//  SwiftUIAgora
//
//  Created by Syed on 24/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI

struct ConatactUs: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                VStack(alignment: .center) {
                    Text("Contact Us").font(.title).fontWeight(.bold).padding(30).colorInvert()
                    contactUsImageView()
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("Agora vote is a voting platform where users can create elections and invite friends to cast their votes. It supports a wide range of voting algorithms some of which are Majority, Egalitarian, Australian STV just to name a few").font(.callout).fontWeight(.bold).colorInvert()
                }
                Spacer()
                VStack {
                    Button(action: {

                    }) {
                       contactUsButtonContent()
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
struct contactUsImageView: View {
    var body: some View {
        return Image("CntcUs")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 150, height: 150)
        .clipped()
        .padding(.bottom, 5)
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

