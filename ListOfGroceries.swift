//
//  ListOfGroceries.swift
//  Example
//
//  Created by Einas Alturki on 11/04/1444 AH.
//

import SwiftUI
import MapKit

struct ListOfGroceries: View {
    
    @EnvironmentObject var localSearchService: LocalSearchService
    @State private var search: String = "Grocery"
  
    
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

struct ListOfGroceries_Previews: PreviewProvider {
    static var previews: some View {
        ListOfGroceries().environmentObject(LocalSearchService())
    }
}


