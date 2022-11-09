//
//  ContentView.swift
//  Example
//
//  Created by Ghada Amer Alshahrani on 04/04/1444 AH.
//

import SwiftUI

struct ContentView: View {
//           init() {
//
//            let navBarAppearance = UINavigationBarAppearance()
//
//            navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.init(named: "Dgreen") as Any]
//
//                UINavigationBar.appearance().standardAppearance = navBarAppearance
//                UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
//                UINavigationBar.appearance().compactAppearance = navBarAppearance
//
//     }
    
    @Binding var neighborhood : String
    @State var isPresented = false
    
    var body: some View {
        NavigationView(){
            TabView{
                Our_Neighborhood()
                    .tabItem{
                        Label("Our_Neighborhood".localized, systemImage: "house")
                        
                    }
                    .toolbar(.visible, for: .tabBar)
                
                    .toolbarBackground(Color("Lgreen"),for: .tabBar)
                
                
                OurNews(AddedMessage: Binding<String>.constant("excavtion on the main street"),
                            AddedName: Binding<String>.constant("Rakan"),AddedGender: Binding<String>.constant("MaleProfile"))
                    .tabItem{
                        Label("Our_News".localized, systemImage: "bubble.middle.bottom")
                    }
                    .toolbar(.visible, for: .tabBar)
                
                    .toolbarBackground(Color("Lgreen"),for: .tabBar)
                
                MyAccount()
                
                    .tabItem{
                        Label("My_Account".localized, systemImage: "person.circle")
                    }
                    .toolbar(.visible, for: .tabBar)
                
                    .toolbarBackground(Color("Lgreen"),for: .tabBar)
            }
            
            
            .toolbar {
                Button {
                    isPresented.toggle()
                    
                    
                }label :{ Text(neighborhood)
                    Image(systemName: "mappin")
                        .foregroundColor(Color("Dgreen"))
                        .font(.caption2)
                        .fullScreenCover(isPresented: $isPresented, content: {
                            SplachScreen()})
                }
            }
            .navigationTitle("Have_a_walk_in_the_neighborhood".localized)
        }
        
        
        .accentColor(Color("Ggreen"))
//        .padding()
        


    }
    

}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(neighborhood:Binding<String>.constant("Alyasmin"))
    }
}
