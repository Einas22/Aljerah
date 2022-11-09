//
//  ListOfLaundry.swift
//  Example
//
//  Created by Einas Alturki on 11/04/1444 AH.
//

import Foundation
import SwiftUI
import MapKit

struct ListOfLaundry: View {
    
    @EnvironmentObject var localSearchService: LocalSearchService
    @State private var search: String = "Laundry"
    
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

struct ListOfLaundry_Previews: PreviewProvider {
    static var previews: some View {
        ListOfLaundry().environmentObject(LocalSearchService())
    }
}

