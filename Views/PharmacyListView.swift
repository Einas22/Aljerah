//
//  PharmacyListView.swift
//  Example
//
//  Created by Einas Alturki on 11/04/1444 AH.
//

import Foundation
import SwiftUI
import MapKit

struct PharmacyListView: View {
    
    @EnvironmentObject var localSearchService: LocalSearchService
    
    var body: some View {
    
            List {
                ForEach(localSearchService.landmarks) { landmark in
                    VStack(alignment: .leading) {
                        
                        
                        Label(landmark.name,systemImage: "cross")
                        
                        //     .bold()
                            .accentColor(Color("Ggreen"))
                            .font(.system(size: 20))
                        //   Divider()
                        
                        
                        
                        
                        Text(landmark.title)
                            .opacity(0.5)
                        
                           }
                    
                    
                }
                .listStyle(.plain)
            }
        
    }
    
}
struct PharmacyListView_Previews: PreviewProvider {
    static var previews: some View {
        PharmacyListView().environmentObject(LocalSearchService())
    }
}
