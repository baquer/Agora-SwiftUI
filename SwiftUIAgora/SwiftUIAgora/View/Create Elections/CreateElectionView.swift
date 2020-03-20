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

    
    @State var name = ""
    @State var description = ""
    @State var startDate = Date()
    @State var endDate = Date()
    
    
    var body: some View {
        
        ZStack {
            Color.black
            .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Create Elections").fontWeight(.heavy).font(.largeTitle).padding([.top,.bottom], 20).foregroundColor(.white)
                Form {
                    TextField("Enter Election Name", text: $name)
                    TextField("Enter Election Description", text: $description).frame(width: 350, height: 200).multilineTextAlignment(.leading)
                    DatePicker(selection: $startDate) {
                        Text("Start Date")
                    }
                    DatePicker(selection: $endDate) {
                        Text("End Date")
                    }
                    // Checking that if data is stored or not
//                    List {
//                        ForEach(createElect, id: \.self) { election in
//                            Text("\(election.elecDes ?? "Unknown")")
//                        }
//                    }
                }.colorInvert()
                 .padding(2)
                Button(action: {
                   // Storing user data in User Default
//                    UserDefaults.standard.set(self.name, forKey: "electionName")
//                    UserDefaults.standard.set(self.description, forKey: "electionDescription")
//                    UserDefaults.standard.set(self.startDate, forKey: "startDate")
//                    UserDefaults.standard.set(self.endDate, forKey: "endDate")
//                    print(UserDefaults.standard.value(forKey: "electionName")!)
                    
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
                }) {
                   createNextButtonContent()
                }
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

struct createNextButtonContent: View {
    var body: some View {
        return Text("Next")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color(hex: 0xFFBE00))
            .cornerRadius(15.0)
    }
}

