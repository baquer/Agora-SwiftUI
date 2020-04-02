//
//  ReportBug.swift
//  SwiftUIAgora
//
//  Created by Syed on 24/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI

struct ReportBug: View {
    let reportBugURL = URL(string: Constants.APIURL.reportBugURL)
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                VStack(alignment: .center) {
                    Text(Constants.labels.reportBug).font(.title).fontWeight(.bold).padding(30).colorInvert()
                    bugImageView()
                }
                Spacer()
                VStack(alignment: .center) {

                    Text(Constants.messages.reportBugMessage).font(.callout).fontWeight(.bold).colorInvert()
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

// Bug Image View

struct bugImageView: View {
    var body: some View {
        return Image(Constants.imageName.RBug)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 150, height: 150)
        .clipped()
        .padding(.bottom, 5)
    }
}

//Report Bug Button Content

struct reportBugButtonContent: View {
    var body: some View {
        return Text(Constants.buttonsLabels.reportBug)
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color(hex: Constants.colorHexValue.green))
            .cornerRadius(15.0)
    }
}
