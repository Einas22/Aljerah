//
//  FirstPage.swift
//  Example
//
//  Created by Ghada Amer Alshahrani on 04/04/1444 AH.
//

import SwiftUI

struct AddTransportation_Service: View {
    @State private var showingAlert = false
    @State var Ffild: String = ""
    @State var Sfild: String = ""
    @State var Tfild: String = ""
    
    
    @Binding var neighborhood : String
    @State var isPresented = false
    
    
    var body: some View {
        
        NavigationView {
            VStack()
            {
                
                VStack(alignment: .leading)
                {
                    Text("Service_Topic".localized)
                        .font(.system(size: 20 , weight: .bold))
                        .foregroundColor(Color("Ggreen"))
                        .padding()
                    
                    
                    TextField("Topic_Description".localized, text: $Ffild)
                        .padding()
                        .foregroundColor(Color.black)
                        .background(Color("LGreen"))
                        .cornerRadius(8.0)
                    
                    Text("Service_Details")
                        .font(.system(size: 20 , weight: .bold))
                        .foregroundColor(Color("Ggreen"))
                        .padding()
                    
                    TextField("Details_Description".localized,text: $Sfild)
                        .padding()
                        .foregroundColor(Color.black)
                        .background(Color("LGreen"))
                        .cornerRadius(8.0)
                    
                    
                    Text("Ways_to_communicate".localized)
                    
                        .foregroundColor(Color("Ggreen"))
                        .font(.system(size: 20 , weight: .bold))
                        .padding()
                    
                    TextField("Comm_Description".localized, text: $Tfild)
                        .padding()
                        .foregroundColor(Color.black)
                        .background(Color("LGreen"))
                        .cornerRadius(8.0)
                        .padding(.bottom)
                    
                    Button("Add_Service".localized) {
                        showingAlert = true
                    }
                    .alert("The_service_has_been_added".localized, isPresented: $showingAlert) {
                        Button("Ok", role: .cancel) { isPresented.toggle()
                            
                        }
                    }
                    
//                    Button("Save".localized) {
//                        showingAlert = true
//                    }
//                    .alert("The_account_has_been_updated".localized, isPresented: $showingAlert) {
//                        Button("OK".localized, role: .destructive) {
//                            isPresented.toggle()
//                        }
//                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color("Dgreen"))
                    .cornerRadius(8.0)
                    .padding(.top)
                    
                }
                .padding()
                
                .navigationTitle("Add_a_Shared_Transportation_Service".localized)
                
                .toolbar {
                    Button {
                        isPresented.toggle()
                        
                        
                    }label :{ Text(neighborhood)
                        Image(systemName: "mappin")
                    .foregroundColor(Color("Dgreen"))
                    .font(.caption2)
                    .fullScreenCover(isPresented: $isPresented, content: {
                        ContentView(neighborhood:Binding<String>.constant("Alyasmin"))})
                }
            }
                
                
            }
            
        }
    }
}

struct AddTransportation_Service_Previews: PreviewProvider {
    static var previews: some View {
        AddTransportation_Service(neighborhood:Binding<String>.constant("Alyasmin"))
    }
}
