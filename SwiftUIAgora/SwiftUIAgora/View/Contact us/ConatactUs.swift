//
//  ConatactUs.swift
//  SwiftUIAgora
//
//  Created by Syed on 24/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI

struct ConatactUs: View {
    let gitLabURL = URL(string: "https://gitlab.com/aossie/agora-ios")
    let gitterURL = URL(string: "https://gitter.im/AOSSIE/Agora-iOS")
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
                    Text("Feel free to contact us on Gitter and work with us on GitLab").font(.callout).fontWeight(.bold).colorInvert()
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

