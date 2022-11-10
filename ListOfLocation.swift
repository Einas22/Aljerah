//
//  ListOfPharmacy.swift
//  Example
//
//  Created by Einas Alturki on 11/04/1444 AH.

import Foundation
import SwiftUI
import MapKit

struct ListOfLocation: View {
    
    @EnvironmentObject var localSearchService: LocalSearchService
    @State var search: String // = "Pharmacy"
    @State var icon : Int

    
    var body: some View {
      
        VStack {
            if localSearchService.landmarks.isEmpty {
                Text("No placese around you !")
                    .padding()

                
            } else {
                    
                LocationListView(icon: icon)

                
            }
          //  Spacer()
       }.onAppear {
           localSearchService.search(
                           query: search)
       }
    }
}

struct ListOfLocation_Previews: PreviewProvider {
    static var previews: some View {
        ListOfLocation(search: "Pharmacy", icon: 4).environmentObject(LocalSearchService())
    }
}


