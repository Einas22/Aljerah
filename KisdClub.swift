////
////  KidsGathring.swift
////  Example
////
////  Created by Ghada Amer Alshahrani on 05/04/1444 AH.
////
//
import SwiftUI

struct KidsClub: View {
    @State private var showsheet = false
    struct Kids_Club {
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
    
    var myKidsClub:[Kids_Club] = [
        Kids_Club (ServiceTopic: "Kids club in house No.10", ServiceDetails: "Children's club in house number 10 for children of four years old .", WaysToCommunicate: "Whatsapp only:05678936"),
        
        Kids_Club (ServiceTopic: "Kids club in the neighborhood park", ServiceDetails: "Kids club in the neighborhood park at 4 pm", WaysToCommunicate: "Twitter:@Adel_ali"),
        
        Kids_Club (ServiceTopic: "Kids club in house No.7", ServiceDetails: "Children's club in house number 7 for children of 6 years old", WaysToCommunicate: "Phone : 055446890"),
        
        Kids_Club (ServiceTopic: "Kids club in house No.3", ServiceDetails: "Children's club in house number 3 for children of 8 years old", WaysToCommunicate: "Phone : 05674322"),
        
        Kids_Club (ServiceTopic: "Kids club service", ServiceDetails: "Children's club service in neighborhood park from 4-7 pm ", WaysToCommunicate: "Email:Saud234@gmail.com"),
        
        Kids_Club (ServiceTopic: "Kids club service", ServiceDetails: "Children's club service in house 1 ", WaysToCommunicate: "Phone:05698342"),
        
    ]
    var body: some View {
        VStack(alignment: .leading){
            
            
            ScrollView(.vertical) {
                Button {
                    
                    showsheet.toggle()
                    
                }
            label: {
                Text("Add_Service")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color("Dgreen"))
                    .cornerRadius(8.0)
                
                
            }.sheet(isPresented: $showsheet) {
                KidsClub_Service()
            }
                ForEach(myKidsClub,id: \.id) { oneSh_Transportation in
                    DisclosureGroup(
                        content: {
                            VStack(alignment: .leading){
                                
                                Text("Service_Details").bold()
                                    .foregroundColor(Color("Dgreen"))
                                Text(oneSh_Transportation.ServiceDetails)
                                //
                                Text("")
                                Text("Ways_to_communicate").bold()
                                    .foregroundColor(Color("Dgreen"))
                                Text(oneSh_Transportation.WaysToCommunicate)
                                
                                
                            }
                            
                            .font(.system(size: 18))
                            
                        } ,
                        label: {Label(oneSh_Transportation.ServiceTopic,systemImage: "teddybear").bold()
                            
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
    }}
struct KidsGathring_Previews: PreviewProvider {
    static var previews: some View {
        KidsClub()
    }
}
