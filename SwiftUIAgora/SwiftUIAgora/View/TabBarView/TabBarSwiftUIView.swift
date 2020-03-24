//
//  TabBarSwiftUIView.swift
//  SwiftUIAgora
//
//  Created by Syed on 19/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI

struct TabBarSwiftUIView: View {
    
    @State var selection = 5
    @State var popOver: Bool = false

    init() {
        UITabBar.appearance().barTintColor = UIColor.black
    }
    var body: some View {
        ZStack {
            Color.black
            .edgesIgnoringSafeArea(.all)
            TabView(selection:$selection) {
                
                ElectionView()
                    .tabItem {
                        VStack {
                            Image("Election")
                            Text("Elections")
                        }
                }.tag(1)
                Text("Edit Your Profile Here")
                    .tabItem {
                        VStack {
                            Image("EditProfile")
                            Text("Edit Profile")
                        }
                }.tag(2)
                ConatactUs()
                    .tabItem {
                        VStack {
                            Image("ConnectUs")
                            Text("Contact Us")
                        }
                }.tag(3)
                AboutUs()
                    .tabItem {
                        VStack {
                            Image("About")
                            Text("About Us")
                        }
                }.tag(4)
                ReportBug()
                    .tabItem {
                        VStack {
                            Image("Bug")
                            Text("Report Bug")
                        }
                }.tag(5)
            }.accentColor(Color.white)
        }.navigationBarItems(trailing:
            Button(action: {
                self.popOver = true
            }) {
               moreButtonContent()
            }
        )
    }
}
struct TabBarSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarSwiftUIView()
    }
}

struct moreButtonContent: View {
    var body: some View {
        return Image("MV")
            .resizable()
            .frame(width: 40, height: 35)
            .foregroundColor(.white)
    }
}
