//
//  SharedTransportation.swift
//  Example
//
//  Created by Ghada Amer Alshahrani on 05/04/1444 AH.
//

import SwiftUI

struct SharedTransportation: View {
    @State private var showsheet = false
    struct Sh_Transportation {
        var id = UUID()
        var ServiceTopic: String
        var ServiceDetails: String
        var WaysToCommunicate: String
    }
    
    struct ServicesModifier: ViewModifier {
       func body(content: Content) -> some View {
           content
            .padding()
           .foregroundColor(Color("Ggreen"))
           .background(Color("LGreen"))
           .cornerRadius(8.0)
           
       }
    }
    var myTransportation:[Sh_Transportation] = [
        Sh_Transportation (ServiceTopic: "Serv1".localized, ServiceDetails: "ServDetail1".localized, WaysToCommunicate: "ServContact1".localized),
        
        Sh_Transportation (ServiceTopic: "Serv2".localized, ServiceDetails: "ServDetail2".localized, WaysToCommunicate: "ServContact2".localized),
        
        Sh_Transportation (ServiceTopic: "Serv3".localized, ServiceDetails: "ServDetail3".localized, WaysToCommunicate: "ServContact3".localized),
        
        Sh_Transportation (ServiceTopic: "Serv4".localized, ServiceDetails: "ServDetail4".localized, WaysToCommunicate: "ServContact4".localized),
        
        Sh_Transportation (ServiceTopic: "Serv5".localized, ServiceDetails: "ServDetail5".localized, WaysToCommunicate: "ServContact5".localized),
        
        Sh_Transportation (ServiceTopic: "Serv6".localized, ServiceDetails: "ServDetail6".localized, WaysToCommunicate: "ServContact6".localized),
        
    ]
    
    var body: some View {

            VStack(alignment: .leading){
                

                ScrollView(.vertical) {
                    Button {
                        
                        showsheet.toggle()
                        
                    }
                label: {
                    Text("Add_Service".localized)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color("Dgreen"))
                        .cornerRadius(8.0)
                        
                    
                }.sheet(isPresented: $showsheet) {
                    AddTransportation_Service(neighborhood:Binding<String>.constant("hi"))
                }
                    ForEach(myTransportation,id: \.id) { oneSh_Transportation in
                        DisclosureGroup(
                            content: {
                                VStack(alignment: .leading){
                                    
                                    Text("Service_Details".localized)
                                        .multilineTextAlignment(.leading)
                                        .bold()
                                        .foregroundColor(Color("Dgreen"))
                                        
                                    Text(oneSh_Transportation.ServiceDetails)
                                    //
                                    Text("")
                                    Text("Ways_to_communicate".localized).bold()
                                        .foregroundColor(Color("Dgreen"))
                                    Text(oneSh_Transportation.WaysToCommunicate)
                                    
                                    
                                }
                                
                                .font(.system(size: 18))
                                
                            } ,
                            label: {Label(oneSh_Transportation.ServiceTopic,systemImage: "car.2").bold()
                                
                            }
                            
                        )
                        .modifier((ServicesModifier()))
                        .accentColor(Color("Ggreen"))
                        .font(.system(size: 20))
                        //                    Divider()
                        
                    }
                }.padding(.all)
//                    .navigationTitle("Shared Transportation")
                
                //
            }
        }
    }

struct SharedTransportation_Previews: PreviewProvider {
    static var previews: some View {
        SharedTransportation()
    }
}
