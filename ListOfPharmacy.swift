//
//  ListOfPharmacy.swift
//  Example
//
//  Created by Einas Alturki on 11/04/1444 AH.
//

import Foundation
import SwiftUI
import MapKit

struct ListOfPharmacy: View {
    
    @EnvironmentObject var localSearchService: LocalSearchService
    @State var search: String// = "Pharmacy"

    
    var body: some View {
      
        VStack {
            if localSearchService.landmarks.isEmpty {
                Text("No placese around you !")
                    .padding()

                
            } else {
                PharmacyListView()
            }
          //  Spacer()
       }.onAppear {
           localSearchService.search(
                           query: search)
       }
    }
}

struct ListOfPharmacy_Previews: PreviewProvider {
    static var previews: some View {
        ListOfPharmacy(search: "Pharmacy").environmentObject(LocalSearchService())
    }
}


