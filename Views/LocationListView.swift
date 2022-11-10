//
//  PharmacyListView.swift
//  Example
//
//  Created by Einas Alturki on 11/04/1444 AH.
//

import Foundation
import SwiftUI
import MapKit

struct LocationListView: View {
    
    @EnvironmentObject var localSearchService: LocalSearchService
    @State var icon : Int 
    
    var body: some View {
    
            List {
                ForEach(localSearchService.landmarks) { landmark in
                    VStack(alignment: .leading) {
                        
                        switch icon{
                        case 0:
                            
                            Label(landmark.name,systemImage: "basket")
                            
                            //     .bold()
                                .accentColor(Color("Ggreen"))
                                .font(.system(size: 20))
                            //   Divider()
                            
                        case 1 :
                            Label(landmark.name,systemImage: "cross")
                            
                            //     .bold()
                                .accentColor(Color("Ggreen"))
                                .font(.system(size: 20))
                            //   Divider()
                        case 2 :
                            
                            Label(landmark.name,systemImage: "mustache")
                            
                            //     .bold()
                                .accentColor(Color("Ggreen"))
                                .font(.system(size: 20))
                            //   Divider()
                        case 3 :
                            Label(landmark.name,systemImage: "washer")
                            
                            //     .bold()
                                .accentColor(Color("Ggreen"))
                                .font(.system(size: 20))
                            //   Divider()
                            
                            
                        default:
                           Text("")
                        }
                        
                        Text(landmark.title)
                            .opacity(0.5)
                        
                           }
                    
                    
                }
                .listStyle(.plain)
            }
        
    }
    
}
struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView(icon : 4).environmentObject(LocalSearchService())
    }
}
