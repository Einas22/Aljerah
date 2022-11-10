//
//  ContentView.swift
//  Neighborhood_MyAccount
//
//  Created by Einas Alturki on 05/04/1444 AH.
//

import SwiftUI

struct TextModifier: ViewModifier {
   func body(content: Content) -> some View {
       content
           .padding()
          // .font(.title)
           .foregroundColor(.gray)
           .frame(width: 350, height: 40, alignment: .leading)
           .background(Color("LGreen"))
           .cornerRadius(8.0)
   }
}
struct MyAccount: View {
    
    @State var page_title: String = ""
    @State var user_name: String = ""
    @State var email: String = ""
    @State var phoneNum: String = ""
    @State private var showsheet = false
    
    var body: some View {
        
        NavigationView() {
            
            VStack{
                
                //User Gender picture inside a Stack
                
                
                // VStack{
                
                Image("FemaleProfile")
                    .resizable()
                    .frame(width: 100.0, height: 100.0)
                
                //  }
                
                
                //User Information inside a Stack
                
                VStack(alignment:.leading){
                    
                    
                    //User Name
                    Text("User_Name".localized)
                        .modifier(HeaderModifier())
                    
                    
                    Text("Einas")
                        .modifier(TextModifier())
                    
                    //.padding()
                    //Email
                    Text("Email")
                        .modifier(HeaderModifier())
                    
                    
                    
                    Text("email@email.com")
                        .modifier(TextModifier())
                    
                    // .padding()
                    //Phone Number
                    Text("Phone_Number".localized)
                        .modifier(HeaderModifier())
                    
                    
                    Text("+966555555")
                        .modifier(TextModifier())
                    
                }
                .padding()
                
                
                Button {
                    
                    showsheet.toggle()
                    
                }
            label: {
                Text("Edit")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color("Dgreen"))
                    .cornerRadius(8.0)
                    .padding()
                
            }.sheet(isPresented: $showsheet) {
                Edit_MyAccount()
            }
                

            }
        }
        
    }}

struct MyAccount_Previews: PreviewProvider {
    static var previews: some View {
       MyAccount()
    }
}
