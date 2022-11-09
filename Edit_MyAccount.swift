//
//  Edit_MyAccount.swift
//  Neighborhood_MyAccount
//
//  Created by Einas Alturki on 05/04/1444 AH.
//

import SwiftUI

 struct HeaderModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 18 , weight: .bold))
            .foregroundColor(Color("Ggreen"))
    }
}

struct TextFieldModifier: ViewModifier {
   func body(content: Content) -> some View {
       content
           .padding()
       .foregroundColor(Color.black)
       .background(Color("LGreen"))
       .cornerRadius(8.0)
       
   }
}


struct Edit_MyAccount: View {
    @State private var showingAlert = false
  
    @State var user_name: String = ""
    @State var email: String = ""
    @State var password : String = ""
    @State var phoneNum: String = ""
    @State var Female = false
    @State var Male = false
    @State var isPresented = false
    
    var body: some View {
        
        NavigationView {
           
            //Edit User Profile
            
             VStack{
                 
                 VStack(alignment:.leading){
                     
                     //User Name
                     Text("User_Name".localized)
                         .modifier(HeaderModifier())
                     
                     TextField("User_Name".localized, text: $user_name)
                         .modifier(TextFieldModifier())
                     
                     
                     //Email
                     Text("ِEmail".localized)
                         .modifier(HeaderModifier())
                     
                     TextField("@emal.com", text: $email)
                         .modifier(TextFieldModifier())
                     
                     //Pasword
                     Text("Password".localized)
                         .modifier((HeaderModifier()))
                     
                     TextField("Pass_Detail", text: $password)
                         .modifier((TextFieldModifier()))
                     
                     
                     
                     //Phone Number
                     Text("Phone_Number".localized)
                         .modifier(HeaderModifier())
                     
                     
                     TextField("+966", text: $phoneNum)
                         .modifier(TextFieldModifier())
                     
                     
                     //Gender
                     Text("Gender".localized)
                         .modifier(HeaderModifier())
                     
                     
                     HStack{
                         
                         //Female button image
                         VStack {
                             
                             Button{
                                 Female = true
                                 Male = false
                             }
                         label:
                             {
                                 Image ("Female")}
                         }.border(Female ? .green : .clear)
                         
                             .padding(.horizontal, 70.0)
                         
                         //Male button image
                         VStack {
                             
                             Button{
                                 Female = false
                                 Male = true
                                 
                             }
                         label: {
                             Image ("Male")}
                             
                         }.border(Male ? .green : .clear)
                         
                     }
                 }
                 
                 
                 Button("Save".localized) {
                     showingAlert = true
                 }
                 .alert("The_account_has_been_updated".localized, isPresented: $showingAlert) {
                     Button("Ok".localized, role: .destructive) {
                         isPresented.toggle()
                     }
                 }
             
                 .frame(maxWidth: .infinity)
                 .padding()
                 .foregroundColor(.white)
                 .background(Color("Dgreen"))
                 .cornerRadius(8.0)
                 .padding(.top)
 //                       .padding()
                 }
                        }
        .fullScreenCover(isPresented: $isPresented, content: {
            ContentView(neighborhood:Binding<String>.constant("Alyasmin"))
        })
//            .navigationTitle("Edit My Account")
            .padding(.all)
        }
        
    }


struct Edit_MyAccount_Previews: PreviewProvider {
    static var previews: some View {
       Edit_MyAccount()
    }
}
