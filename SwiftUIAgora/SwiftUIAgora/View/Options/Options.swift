//
//  Options.swift
//  SwiftUIAgora
//
//  Created by Syed on 24/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI

struct Options: View {
    @State var inviteVoters = false
    @State var realTimeVoters = false
    @State var selected =  ""
    @State var select = ""
    @State var selection: Int? = nil
    let ballotArray = ["Ballots are completely secret and never shown to any one","Ballots are only visible to me","Ballots are visilbe to every one with access of elections"]
    let listArray = ["Only me","Everyone with access to election"]
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 5) {
                VStack(alignment: .center) {
                    Text("Some More Options").font(.title).fontWeight(.bold).colorInvert()
                    .padding(10)
                    Form {
                        Toggle(isOn: $inviteVoters) {
                            Text("Invite Voters?").font(.headline).fontWeight(.bold)
                        }
                        Toggle(isOn: $realTimeVoters) {
                            Text("Get Real Time Results?").font(.headline).fontWeight(.bold)
                        }
                    }.colorInvert()
                }.padding(10)
                VStack(alignment: .center) {
                    Text("How Secret are ballots?").font(.title).fontWeight(.bold).colorInvert()
                    List(0..<ballotArray.count) { i in
                        VStack {
                         Button(action: {
                             self.selected = self.ballotArray[i]
                             
                         }) {
                         HStack(alignment: .firstTextBaseline, spacing: 40) {
                             Text(self.ballotArray[i])
                             Spacer()
                             ZStack{
                                 Circle().fill(self.selected == self.ballotArray[i] ? Color(hex: 0x005229) : Color.black.opacity(0.2)).frame(width: 18, height: 18)
                                 
                                 if self.selected == self.ballotArray[i] {
                                     
                                     Circle().stroke(Color(hex: 0x005229), lineWidth: 4).frame(width: 25, height: 25)
                                 }
                             }
                         }.padding(.horizontal, 20)
                         }
                        }.frame(width: 380, height: 50)
                         .background(Color.white)
                         .cornerRadius(30)
                         .shadow(color: .gray, radius: 5)
                         .colorInvert()
                    }.colorInvert()
                }
                VStack(alignment: .center) {
                    Text("Who can see the list of Voters?").font(.title).fontWeight(.bold).colorInvert()
                    List(0..<listArray.count) { i in
                        VStack {
                         Button(action: {
                             self.select = self.listArray[i]
                             
                         }) {
                         HStack(alignment: .firstTextBaseline, spacing: 40) {
                             Text(self.listArray[i])
                             Spacer()
                             ZStack{
                                 Circle().fill(self.select == self.listArray[i] ? Color(hex: 0x005229) : Color.black.opacity(0.2)).frame(width: 18, height: 18)
                                 
                                 if self.select == self.listArray[i] {
                                     
                                     Circle().stroke(Color(hex: 0x005229), lineWidth: 4).frame(width: 25, height: 25)
                                 }
                             }
                         }.padding(.horizontal, 20)
                         }
                        }.frame(width: 380, height: 50)
                         .background(Color.white)
                         .cornerRadius(30)
                         .shadow(color: .gray, radius: 5)
                         .colorInvert()
                    }.colorInvert()
                    Button(action: {
                        self.selection = 1

                    }) {
                       createElectButtonContent()
                    }
                }
            }
        }
    }
}

struct Options_Previews: PreviewProvider {
    static var previews: some View {
        Options()
    }
}

struct createElectButtonContent: View {
    var body: some View {
        return Text("Create Elections")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color(hex: 0xFFBE00))
            .cornerRadius(15.0)
    }
}
