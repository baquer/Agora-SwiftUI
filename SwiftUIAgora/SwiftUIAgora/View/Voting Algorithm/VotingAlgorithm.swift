//
//  VotingAlgorithm.swift
//  SwiftUIAgora
//
//  Created by Syed on 21/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI
import CoreData

struct VotingAlgorithm: View {
    let algoArray = ["Oklahoma","Range Votings", "Ranked Pairs", "Satisfaction Approval Voting","Smith Sets", "Approval","Copeland","Borda","Nanson","Bladwin", "Uncovered Sets", "Random Ballot","Contingent", "Minimax condorset","Sequential Proportian Approval", "Kemeny-young", "Australian"]
    @State var selected =  ""
    @State var show = false
    @State var votingAlg = ""
    @State var selection: Int? = nil
    @FetchRequest(entity: VotingAlgo.entity(), sortDescriptors: [] )var votingAlgo: FetchedResults<VotingAlgo>
    @Environment(\.managedObjectContext) var moc
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Voting Algorithm").fontWeight(.heavy).font(.largeTitle).padding([.top,.bottom], 20).foregroundColor(.white)
                List(0..<algoArray.count) { i in
                   VStack {
                    Button(action: {
                        self.selected = self.algoArray[i]
                        
                    }) {
                    HStack(alignment: .firstTextBaseline, spacing: 40) {
                        Text(self.algoArray[i])
                        Spacer()
                        ZStack{
                            Circle().fill(self.selected == self.algoArray[i] ? Color(hex: 0x005229) : Color.black.opacity(0.2)).frame(width: 18, height: 18)
                            
                            if self.selected == self.algoArray[i] {
                                
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
                HStack{
                    
                    Spacer()
                    NavigationLink(destination: ElectionDetails(), tag: 1, selection: $selection) {
                     Button(action: {
                        
                        let storeCreateObject = VotingAlgo(context: self.moc)
                        storeCreateObject.votingAlgo = self.votingAlg
                        do {
                            try self.moc.save()
                        } catch {
                            print(error)
                        }
                        self.show.toggle()
                        self.selection = 1
                     }) {
                         
                         Text("Continue").padding(.vertical).padding(.horizontal,20).foregroundColor(.white)
                         
                     }
                     .background(
                        
                        self.selected != "" ?
                        
                            LinearGradient(gradient: .init(colors: [Color(hex: 0x005229),Color(hex: 0xFFBE00)]), startPoint: .leading, endPoint: .trailing) :
                        
                            LinearGradient(gradient: .init(colors: [Color.black.opacity(0.2),Color.black.opacity(0.2)]), startPoint: .leading, endPoint: .trailing)
                     
                     )
                    .clipShape(Capsule())
                    .disabled(self.selected != "" ? false : true)
                    }
                    
                    
                }.padding(.top)
            }
        }
    }
}

struct VotingAlgorithm_Previews: PreviewProvider {
    static var previews: some View {
        VotingAlgorithm()
    }
}
