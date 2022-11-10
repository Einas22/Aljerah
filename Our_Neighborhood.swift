//
//  OurNeighborhood.swift
//  Aljirah
//
//  Created by Einas Alturki on 16/04/1444 AH.
//
import SwiftUI
import MapKit

struct  TabModifierModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.caption)
            .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
            .padding()
            .foregroundColor(Color.black)
            .background(Color("LGreen"))
            .cornerRadius(26)
    }
}

struct SubTitelModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(size: 28,weight: .bold))
            .foregroundColor(Color("Ggreen"))
    }
}
struct ListOfTabs{
    var id = UUID()
    var tabName: String
    var tabIcon: Int
    var iconName: String
   // var tabSearch
}

var arrayOfTabs: [ListOfTabs] = [
    ListOfTabs(tabName: "Groceries", tabIcon: 0, iconName:  "basket"),
    ListOfTabs(tabName: "Pharmacies", tabIcon: 1, iconName: "cross"),
    ListOfTabs(tabName: "Barber", tabIcon: 2, iconName: "mustache"),
    ListOfTabs(tabName: "Laundry", tabIcon: 3, iconName: "washer")
]

struct ListOfTabs2{
    var id = UUID()
    var tabName: String
    var iconName: String
    var destination: AnyView = AnyView(SharedTransportation())
}

var arrayOfTabs2 : [ListOfTabs2] = [
    ListOfTabs2(tabName: "Shared_Transportation", iconName: "car.2", destination: AnyView(SharedTransportation())),
    ListOfTabs2(tabName: "Kids_Gathring", iconName: "teddybear", destination: AnyView(KidsClub())),
    ListOfTabs2(tabName: "Car_Wash", iconName: "bubbles.and.sparkles", destination: AnyView(CarWash()))
]
struct Our_Neighborhood: View {
    init() {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.init(named: "Dgreen") as Any]
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
        
        
    }//init to change the appearance of the nav
    
    var body: some View {
        NavigationView {
            VStack{
                
                //Neighborhood Servicies
                Text("Neighborhood_Services".localized)
                    .modifier(SubTitelModifier())
                
                ScrollView(.horizontal)
                {
                    HStack{
                        ForEach(arrayOfTabs, id: \.id){ tabs in
                            NavigationLink(destination:ListOfLocation(search: tabs.tabName, icon: tabs.tabIcon) ){
                                VStack{
                                    Image(systemName: tabs.iconName)
                                        .font(.system(size:20))
                                    Text(tabs.tabName.localized)
                                }
                                .modifier(TabModifierModifier())
                            }
                        }
              
                    }
                }
                .padding()
                Divider()
                .padding()
                
                //Services Between Neighbors
                Text("Shared_Services".localized)
                    .modifier(SubTitelModifier())
                
                ScrollView(.horizontal){
                    HStack {
                        ForEach(arrayOfTabs2, id: \.id){ tabs in
                            NavigationLink(destination:tabs.destination){
                                VStack{
                                    Image(systemName: tabs.iconName)
                                        .font(.system(size:20))
                                    Text(tabs.tabName.localized)
                                }
                                .modifier(TabModifierModifier())
                            }
                        }
                    }
                }
                .padding()
            }
        }
        
    }
}


struct Our_Neighborhood_Previews: PreviewProvider {
    static var previews: some View {
          Our_Neighborhood()
    }
}
