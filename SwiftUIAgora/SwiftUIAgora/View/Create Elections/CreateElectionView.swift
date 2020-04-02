//
//  CreateElectionView.swift
//  SwiftUIAgora
//
//  Created by Syed on 19/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI
import CoreData

struct CreateElectionView: View {
    
        @FetchRequest(entity: CreateElection.entity(), sortDescriptors: [] )var createElect: FetchedResults<CreateElection>
    @Environment(\.managedObjectContext) var moc

    @State var selection: Int? = nil
    @State var name = ""
    @State var description = ""
    @State var startDate = Date()
    @State var endDate = Date()
    
    
    var body: some View {
        
        ZStack {
            Color.black
            .edgesIgnoringSafeArea(.all)
            VStack {
                Text(Constants.labels.createElections).fontWeight(.heavy).font(.largeTitle).padding([.top,.bottom], 20).foregroundColor(.white)
                Form {
                    TextField(Constants.placeHolderText.electionName, text: $name)
                    TextField(Constants.placeHolderText.electionDescription, text: $description).frame(width: 350, height: 200).multilineTextAlignment(.leading)
                    DatePicker(selection: $startDate) {
                        Text(Constants.labels.startDate)
                    }
                    DatePicker(selection: $endDate) {
                        Text(Constants.labels.endDate)
                    }
                    // Checking that if data is stored or not
                    
//                    List {
//                        ForEach(createElect, id: \.self) { elections in
//                            Text("\(elections.name ??  "Unknown")")
//                        }
//                    }
                }.colorInvert()
                 .padding(2)
                NavigationLink(destination: AddCandidatesNames(), tag: 1, selection: $selection) {
                Button(action: {
                    
                    // Core Data Model
                    
                    let storeCreateObject = CreateElection(context: self.moc)
                    storeCreateObject.startDate = self.startDate
                    storeCreateObject.endDate = self.endDate
                    storeCreateObject.elecDes = self.description
                    storeCreateObject.name = self.name
                    do {
                        try self.moc.save()
                    } catch {
                        print(error)
                    }
                    self.selection = 1
                }) {
                   createNextButtonContent()
                }
                } .navigationBarTitle(Constants.navigationTitle.createElections)
                Spacer()
                Spacer()
                Spacer()
            }
        }
    }
}


struct CreateElectionView_Previews: PreviewProvider {
    static var previews: some View {
        CreateElectionView()
    }
}

// Next Button Content

struct createNextButtonContent: View {
    var body: some View {
        return Text("Next")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color(hex: Constants.colorHexValue.yellow))
            .cornerRadius(15.0)
    }
}

