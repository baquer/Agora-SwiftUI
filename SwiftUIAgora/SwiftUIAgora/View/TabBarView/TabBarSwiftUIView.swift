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
                            Image(Constants.imageName.elections)
                            Text(Constants.labels.elections)
                        }
                }.tag(1)
                EditProfile()
                    .tabItem {
                        VStack {
                            Image(Constants.imageName.editProfile)
                            Text(Constants.labels.editProfile)
                        }
                }.tag(2)
                ConatactUs()
                    .tabItem {
                        VStack {
                            Image(Constants.imageName.connectUs)
                            Text(Constants.labels.contactUs)
                        }
                }.tag(3)
                AboutUs()
                    .tabItem {
                        VStack {
                            Image(Constants.imageName.aboutUs)
                            Text(Constants.labels.aboutUS)
                        }
                }.tag(4)
                ReportBug()
                    .tabItem {
                        VStack {
                            Image(Constants.imageName.bug)
                            Text(Constants.labels.reportBug)
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

// More Button Content

struct moreButtonContent: View {
    var body: some View {
        return Image(Constants.imageName.moreOp)
            .resizable()
            .frame(width: 40, height: 35)
            .foregroundColor(.white)
            .contextMenu {
                Button(action: {
                }) {
                    Text(Constants.labels.inviteFriends)
                    Image(systemName: Constants.imageName.inviteFriends)
                    .foregroundColor(.red)
                }

                Button(action: {
                }) {
                    Text(Constants.labels.logout)
                    Image(Constants.imageName.logout)
                }
            }
    }
}
