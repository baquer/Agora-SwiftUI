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
                    Text(Constants.placeHolderText.election).fontWeight(.heavy).font(.largeTitle).foregroundColor(.white)
                }.padding()
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 1) {
                        Spacer()
                        Image(Constants.imageName.viewImg1)
                        Text(Constants.labels.totalElection).fontWeight(.heavy).font(.title).foregroundColor(.white).padding(10)
                        HStack(alignment: .firstTextBaseline, spacing: 60) {
                            Text(Constants.labels.totalElectionBody).font(.headline).foregroundColor(.white)
                            Button(action: {
                            }) {
                                Text(Constants.labels.view)
                                    .font(.headline)
                                    .foregroundColor(.blue)
                                    .padding()
                                    .frame(width: 80, height: 30)
                                    .background(Color.white)
                                    .cornerRadius(15.0)
                            }
                        }.padding(1)
                        Text(Constants.labels.one).fontWeight(.heavy).font(.subheadline).foregroundColor(.white)
                        Spacer()
                    }.frame(width: 350, height: 250)
                    .background(Color.red)
                    .cornerRadius(30)
                    .shadow(color: .gray, radius: 5)
                    Spacer()
                    Spacer()
                    VStack(alignment: .leading, spacing: 1) {
                        Spacer()
                        Image(Constants.imageName.viewImg2)
                        Text(Constants.labels.pendingElection).fontWeight(.heavy).font(.title).foregroundColor(.white).padding(10)
                        HStack(alignment: .firstTextBaseline, spacing: 60) {
                            Text(Constants.labels.pendingElectionBody).font(.headline).foregroundColor(.white)
                            Button(action: {
                            }) {
                                Text(Constants.labels.view)
                                    .font(.headline)
                                    .foregroundColor(.blue)
                                    .padding()
                                    .frame(width: 80, height: 30)
                                    .background(Color.white)
                                    .cornerRadius(15.0)
                            }
                        }.padding(1)
                        Text(Constants.labels.zero).fontWeight(.heavy).font(.subheadline).foregroundColor(.white)
                        Spacer()
                    }.frame(width: 350, height: 250)
                    .background(Color.blue)
                    .cornerRadius(30)
                    .shadow(color: .gray, radius: 5)
                    Spacer()
                    Spacer()
                    VStack(alignment: .leading, spacing: 1) {
                        Spacer()
                        Image(Constants.imageName.viewImg4)
                        Text(Constants.labels.ongoingElection).fontWeight(.heavy).font(.title).foregroundColor(.white).padding(10)
                        HStack(alignment: .firstTextBaseline, spacing: 60) {
                            Text(Constants.labels.ongoingElectionBody).font(.headline).foregroundColor(.white)
                            Button(action: {
                            }) {
                                Text(Constants.labels.view)
                                    .font(.headline)
                                    .foregroundColor(.blue)
                                    .padding()
                                    .frame(width: 80, height: 30)
                                    .background(Color.white)
                                    .cornerRadius(15.0)
                            }
                        }.padding(1)
                    Text(Constants.labels.zero).fontWeight(.heavy).font(.subheadline).foregroundColor(.white).frame(alignment: .center)
                        Spacer()
                    }.frame(width: 350, height: 250)
                        .background(Color(hex:Constants.colorHexValue.yellow))
                    .cornerRadius(30)
                    .shadow(color: .gray, radius: 5)
                    Spacer()
                    Spacer()
                    VStack(alignment: .leading, spacing: 1) {
                        Spacer()
                        Image(Constants.imageName.viewImg3)
                        Text(Constants.labels.finishedElection).fontWeight(.heavy).font(.title).foregroundColor(.white).padding(10)
                        HStack(alignment: .firstTextBaseline, spacing: 60) {
                            Text(Constants.labels.finishedElectionBody).font(.headline).foregroundColor(.white)
                            Button(action: {
                            }) {
                                Text(Constants.labels.view)
                                    .font(.headline)
                                    .foregroundColor(.blue)
                                    .padding()
                                    .frame(width: 80, height: 30)
                                    .background(Color.white)
                                    .cornerRadius(15.0)
                            }
                        }.padding(1)
                        Text(Constants.labels.zero).fontWeight(.heavy).font(.subheadline).foregroundColor(.white)
                        Spacer()
                    }.frame(width: 350, height: 250)
                        .background(Color(hex:Constants.colorHexValue.green))
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
                }.navigationBarTitle(Constants.navigationTitle.dashboard)
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
        return Text(Constants.buttonsLabels.createEletion)
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color(hex: Constants.colorHexValue.yellow))
            .cornerRadius(15.0)
    }
}

