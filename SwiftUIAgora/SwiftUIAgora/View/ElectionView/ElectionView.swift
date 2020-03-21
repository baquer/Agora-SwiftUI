//
//  ElectionView.swift
//  SwiftUIAgora
//
//  Created by Syed on 19/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI


struct ElectionView: View {
    
    @State var selection: Int? = nil
    
    var body: some View {
        ZStack {
            Color.black
            .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack(alignment: .leading) {
                   Text("Elections").fontWeight(.heavy).font(.largeTitle).foregroundColor(.white)
                }.padding()
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 1) {
                        Spacer()
                        Image("Red0")
                        Text("TOTAL ELECTIONS").fontWeight(.heavy).font(.title).foregroundColor(.white).padding(10)
                        HStack(alignment: .firstTextBaseline, spacing: 60) {
                            Text("Total Elections Conducted").font(.headline).foregroundColor(.white)
                            Button(action: {
                            }) {
                                Text("View")
                                    .font(.headline)
                                    .foregroundColor(.blue)
                                    .padding()
                                    .frame(width: 80, height: 30)
                                    .background(Color.white)
                                    .cornerRadius(15.0)
                            }
                        }.padding(1)
                        Text("1").fontWeight(.heavy).font(.subheadline).foregroundColor(.white)
                        Spacer()
                    }.frame(width: 350, height: 250)
                    .background(Color.red)
                    .cornerRadius(30)
                    .shadow(color: .gray, radius: 5)
                    Spacer()
                    Spacer()
                    VStack(alignment: .leading, spacing: 1) {
                        Spacer()
                        Image("Red1")
                        Text("PENDING ELECTIONS").fontWeight(.heavy).font(.title).foregroundColor(.white).padding(10)
                        HStack(alignment: .firstTextBaseline, spacing: 60) {
                            Text("Total Pending Eections").font(.headline).foregroundColor(.white)
                            Button(action: {
                            }) {
                                Text("View")
                                    .font(.headline)
                                    .foregroundColor(.blue)
                                    .padding()
                                    .frame(width: 80, height: 30)
                                    .background(Color.white)
                                    .cornerRadius(15.0)
                            }
                        }.padding(1)
                        Text("0").fontWeight(.heavy).font(.subheadline).foregroundColor(.white)
                        Spacer()
                    }.frame(width: 350, height: 250)
                    .background(Color.blue)
                    .cornerRadius(30)
                    .shadow(color: .gray, radius: 5)
                    Spacer()
                    Spacer()
                    VStack(alignment: .leading, spacing: 1) {
                        Spacer()
                        Image("Red3")
                        Text("ACTIVE ELECTIONS").fontWeight(.heavy).font(.title).foregroundColor(.white).padding(10)
                        HStack(alignment: .firstTextBaseline, spacing: 60) {
                            Text("Total Active Eections").font(.headline).foregroundColor(.white)
                            Button(action: {
                            }) {
                                Text("View")
                                    .font(.headline)
                                    .foregroundColor(.blue)
                                    .padding()
                                    .frame(width: 80, height: 30)
                                    .background(Color.white)
                                    .cornerRadius(15.0)
                            }
                        }.padding(1)
                    Text("0").fontWeight(.heavy).font(.subheadline).foregroundColor(.white).frame(alignment: .center)
                        Spacer()
                    }.frame(width: 350, height: 250)
                        .background(Color(hex:0xFFBE00))
                    .cornerRadius(30)
                    .shadow(color: .gray, radius: 5)
                    Spacer()
                    Spacer()
                    VStack(alignment: .leading, spacing: 1) {
                        Spacer()
                        Image("Red2")
                        Text("FINISHED ELECTIONS").fontWeight(.heavy).font(.title).foregroundColor(.white).padding(10)
                        HStack(alignment: .firstTextBaseline, spacing: 60) {
                            Text("Total finished Eections").font(.headline).foregroundColor(.white)
                            Button(action: {
                            }) {
                                Text("View")
                                    .font(.headline)
                                    .foregroundColor(.blue)
                                    .padding()
                                    .frame(width: 80, height: 30)
                                    .background(Color.white)
                                    .cornerRadius(15.0)
                            }
                        }.padding(1)
                        Text("0").fontWeight(.heavy).font(.subheadline).foregroundColor(.white)
                        Spacer()
                    }.frame(width: 350, height: 250)
                    .background(Color(hex:0x005229))
                    .cornerRadius(30)
                    .shadow(color: .gray, radius: 5)
                }
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                VStack {
                NavigationLink(destination: CreateElectionView(), tag: 1, selection: $selection) {
                    Button(action: {
                        self.selection = 1
                    }) {
                       createElectionButtonContent()
                    }
                    }
                }.navigationBarTitle("Dashboard")
            }
        }
    }
}

struct ElectionView_Previews: PreviewProvider {
    static var previews: some View {
        ElectionView()
    }
}
// Create Election Button Content

struct createElectionButtonContent: View {
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

