//
//  AddCandidatesNames.swift
//  SwiftUIAgora
//
//  Created by Syed on 21/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI
import CoreData

struct AddCandidatesNames: View {
    
    @State var candidateName = ""
    @FetchRequest(entity: AddCandidates.entity(), sortDescriptors: [] )var addCan: FetchedResults<AddCandidates>
    @Environment(\.managedObjectContext) var moc
    @State var selection: Int? = nil
    var storeCandidate: [String] = []
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 30) {
                Text("Add Candidates").fontWeight(.heavy).font(.largeTitle).padding([.top,.bottom], 20).colorInvert().frame(alignment: .center)

                customTextField(placeHolder: "Enter Candidates Name", value: $candidateName, lineColor: .black, width: 1).colorInvert()
                
                Button(action: {
                    
                    let storeCreateObject = AddCandidates(context: self.moc)
                    storeCreateObject.candidateName = self.candidateName
                }) {
                   createAddCandidatesButtonContent()
                }
                List {
                    ForEach(addCan, id: \.self) { addCand in
                        VStack {
                            Text("\(addCand.candidateName ?? "Unknown")").font(.title)
                        }.frame(width: 350, height: 50)
                         .background(Color.white)
                         .cornerRadius(30)
                         .shadow(color: .gray, radius: 5)
                         .colorInvert()
                        }.onDelete(perform: delete(at:))
                }.colorInvert()
                NavigationLink(destination: VotingAlgorithm(), tag: 1, selection: $selection) {
                Button(action: {
                    self.selection = 1
                }) {
                   createNextButtonContent()
                }
                    }.navigationBarTitle("Enter Candidates")
                Spacer()
                Spacer()
            }.padding(20)
        }
    }
    func delete(at offsets: IndexSet) {
      // Set the list value to be deleted.
    }
}

struct AddCandidatesNames_Previews: PreviewProvider {
    static var previews: some View {
        AddCandidatesNames()
    }
}

struct createAddCandidatesButtonContent: View {
    var body: some View {
        return Text("Add Candidates")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color(hex: 0x005229))
            .cornerRadius(15.0)
    }
}
