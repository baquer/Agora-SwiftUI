//
//  AboutUs.swift
//  SwiftUIAgora
//
//  Created by Syed on 24/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI

struct AboutUs: View {
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
                    Text("Feel free to contact us on Gitter and work with us on GitLab").font(.callout).fontWeight(.bold).colorInvert()
                }
                Spacer()
                VStack(spacing: 20) {
                    Button(action: {

                    }) {
                       gitterButtonContent()
                    }
                    Button(action: {

                    }) {
                       gitLabButtonContent()
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
struct gitterButtonContent: View {
    var body: some View {
        return Text("GITTER")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color(hex: 0xFFBE00))
            .cornerRadius(15.0)
    }
}

struct gitLabButtonContent: View {
    var body: some View {
        return Text("GITLAB")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color(hex: 0xFFBE00))
            .cornerRadius(15.0)
    }
}
