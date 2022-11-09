

import SwiftUI
import MapKit


struct Our_Neighborhood: View {
//      @Binding var neighborhood : String
//       @State var isPresented = false
   
       init() {
                                       
        let navBarAppearance = UINavigationBarAppearance()
                                                      
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.init(named: "Dgreen") as Any]
         
            UINavigationBar.appearance().standardAppearance = navBarAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
//            UINavigationBar.appearance().compactAppearance = navBarAppearance

 } //init to change the appearance of the nav
                                                  
                                                  
     
                                                  
    var body: some View {
        
                                                      
                                                      
        NavigationView {
            VStack{
                                                              

Text("Neighborhood_Services".localized)
                 //   .font(.title)
                    .font(.system(size: 28,weight: .bold))
                    .foregroundColor(Color("Ggreen"))
                   
                ScrollView(.horizontal)
                {
                    HStack {
                        NavigationLink(destination:ListOfGroceries()) {

                        VStack{
                         Image(systemName: "basket")
                         .font(.system(size:20))
                                                                          Text("Groceries".localized)
                                                                          
                        }
                                .font(.caption)
                                .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
                                .padding()
                                .foregroundColor(Color.black)
                                .background(Color("LGreen"))
                                .cornerRadius(26)
                            
                        }
//                                                                      NavigationLink(destination:ListOfPharmacy(search: <#String#>))


                                                                      NavigationLink(destination:ListOfPharmacy(search : "pharmacy")) {
                          VStack{
                                Image(systemName: "cross")
                                .font(.system(size:20))
                                                                            Text("Pharmacies".localized)
                                }
                                .font(.caption)
                                .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
                                .padding()
                                .foregroundColor(Color.black)
                                .background(Color("LGreen"))
                                .cornerRadius(26)
                        }



                                                                      NavigationLink(destination:ListOfPharmacy(search : "barber")) {
                                VStack{
                                        Image(systemName: "mustache")
                                        .font(.system(size:20))
                                                                                  Text("Barber".localized)
                                      }
                                .font(.caption)
                                .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
                                .padding()
                                .foregroundColor(Color.black)
                                .background(Color("LGreen"))
                                .cornerRadius(26)
                        }



                                                                      NavigationLink(destination:ListOfPharmacy(search : "laundry")) {
                               VStack{
                                     Image(systemName: "washer")
                                     .font(.system(size:20))
                                                                                 Text("Laundry".localized)
                               }
                                .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
                                .font(.caption)
                                .padding()
                                .foregroundColor(Color.black)
                                .background(Color("LGreen"))
                                .cornerRadius(26)

                        }

                    }
                }
                .padding()
                Divider()
                .padding()
                                                              

                                                              Text("Services_between_Neighbors".localized)
                                                              
                .font(.system(size: 28,weight: .bold))
                    .foregroundColor(Color("Ggreen"))
                    .padding()
                    
                
                ScrollView(.horizontal)
                {
                 HStack {
                        NavigationLink(destination:SharedTransportation()) {
                        VStack{
                                                                          
                              Image(systemName: "car.2")
                              .font(.system(size:20))
                                                                          Text("Shared_Transportation".localized)
                                                                          
                           }
                          .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
                          .font(.caption)
                          .padding()
                          .foregroundColor(Color.black)
                          .background(Color("LGreen"))
                          .cornerRadius(26)
                           }
                          
                                                                   
                           NavigationLink(destination:KidsClub()) {
                           VStack{
                                 Image(systemName: "teddybear")
                                 .font(.system(size:20))
                                                                             Text("Kids_Gathring".localized)
                                                                             
                           }
                            .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
                            .font(.caption)
                            .padding()
                            .foregroundColor(Color.black)
                            .background(Color("LGreen"))
                            .cornerRadius(26)
                                                                             
                           }
                                                  
                          NavigationLink(destination:CarWash()){
                          VStack{
                                Image(systemName: "bubbles.and.sparkles")
                                .font(.system(size:20))
                                                                            Text("Car_Wash".localized)
                                                                            
                          }
                          
                          .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
                          .font(.caption)
                          .padding()
                          .foregroundColor(Color.black)
                          .background(Color("LGreen"))
                          .cornerRadius(26)
                                                                            
                          }
                                                                   
                                                                   
                           Text("------")
                          .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
                          .font(.caption)
                          .padding()
                          .foregroundColor(Color.black)
                          .background(Color("LGreen"))
                          .cornerRadius(26)
                                                                   
                 }}
                .padding()
            }
                                                          
//            .navigationTitle(" Take a roll in the lane")
        }
    }
}
struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
          Our_Neighborhood()
    }
}
