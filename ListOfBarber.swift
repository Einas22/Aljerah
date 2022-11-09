//
//  ListOfBarber.swift
//  Example
//
//  Created by Einas Alturki on 11/04/1444 AH.
//

import Foundation
import SwiftUI
import MapKit

struct ListOfBarber: View {
    
    @EnvironmentObject var localSearchService: LocalSearchService
    @State private var search: String = "Barber"
    
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

struct ListOfBarber_Previews: PreviewProvider {
    static var previews: some View {
        ListOfBarber().environmentObject(LocalSearchService())
    }
}

