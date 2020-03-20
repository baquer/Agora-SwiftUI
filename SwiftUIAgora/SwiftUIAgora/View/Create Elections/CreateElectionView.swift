//
//  CreateElectionView.swift
//  SwiftUIAgora
//
//  Created by Syed on 19/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI

struct CreateElectionView: View {
    var body: some View {
        ZStack {
            Color.black
            .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Create Election View").foregroundColor(.white)
            }
        }
    }
}

struct CreateElectionView_Previews: PreviewProvider {
    static var previews: some View {
        CreateElectionView()
    }
}
