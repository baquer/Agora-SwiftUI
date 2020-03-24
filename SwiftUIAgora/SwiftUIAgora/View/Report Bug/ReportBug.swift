//
//  ReportBug.swift
//  SwiftUIAgora
//
//  Created by Syed on 24/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI

struct ReportBug: View {
    let reportBugURL = URL(string: "https://gitlab.com/aossie/agora-ios/issues")
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                VStack(alignment: .center) {
                    Text("Report A Bug").font(.title).fontWeight(.bold).padding(30).colorInvert()
                    bugImageView()
                }
                Spacer()
                VStack(alignment: .center) {

                    Text("Feel free to raise an issue so that our team can improve that as fast as possible").font(.callout).fontWeight(.bold).colorInvert()
                }
                Spacer()
                VStack {
                    Button(action: {
                        UIApplication.shared.open(self.reportBugURL!)

                    }) {
                       reportBugButtonContent()
                    }
                }
                Spacer()
            }
        }
    }
}

struct ReportBug_Previews: PreviewProvider {
    static var previews: some View {
        ReportBug()
    }
}
struct bugImageView: View {
    var body: some View {
        return Image("RBug")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 150, height: 150)
        .clipped()
        .padding(.bottom, 5)
    }
}

struct reportBugButtonContent: View {
    var body: some View {
        return Text("Report Bug")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color(hex: 0x005229))
            .cornerRadius(15.0)
    }
}
