//
//  ProductCard.swift
//  day3
//
//  Created by hoton on 06/04/1444 AH.
//
import SwiftUI

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color("LGreen"))
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
            .padding(.all, 10)
    }
}


struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(Circle())
            .aspectRatio(contentMode: .fit)
            .frame(width: 70)
            .padding(.all, 20)
          
    }
}


struct NameModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 26, weight: .bold))
            .foregroundColor(Color("Dgreen"))
            .padding(.bottom,5)
          
    }
}

struct MessageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 16, weight: .bold))
            .foregroundColor(Color("Ggreen"))
            .padding(.bottom)
          
    }
}

struct DateModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 14))
            .foregroundColor(.black)
            .frame(width:200,alignment: .trailing)

          
    }
}


struct Card {
    var id = UUID()
    let currentDateTime = Date()
    var gender: String
    var name : String
    var message : String
}



struct OurNews: View {
    @State private var isPresentedSheet = false
    
    @Binding var AddedMessage :String
    @Binding var AddedName :String
    @Binding var AddedGender :String
    
  
    
    
    
    
    var body: some View {
        
        let cardList:[Card] = [
            Card(gender: AddedGender, name: AddedName ,message: AddedMessage),
            Card(gender: "FemaleProfile", name: "Einas" ,message: "Post2".localized),
            Card(gender: "FemaleProfile", name: "Hoton" ,message: "Post1".localized),
            Card(gender: "MaleProfile", name: "Ahmed" ,message: "Post3".localized)
           

    ]
    
        
    
        NavigationView {
        VStack{
                Button{
                    isPresentedSheet = true
                }
        label:{Text("Add_Post".localized)}
            .modifier(ButtonModifier())
                
            ScrollView(.vertical){
                
                
                ForEach(cardList,id: \.id){ oneCard
                    in
            HStack{
        
                   Image(oneCard.gender)
                           .resizable()
                           .modifier( IconModifier())
            
                       
                   VStack(alignment: .leading) {
                            // Text(oneCard.Name)
                               // .modifier(NameModifier())
                          
                            
                             Text(oneCard.message)
                                .modifier(MessageModifier())
                         
                             Text(Date.now , format:.dateTime.hour().minute())
                                 .modifier( DateModifier())
                    }
                        Spacer()
           }.modifier(CardModifier())
                    
                    
                }
              
            }
            
        }.padding()
                .navigationTitle("Our_News".localized)
            
        }.sheet(isPresented: $isPresentedSheet, content: {
            AddToOurNews(isPresentedSheet: $isPresentedSheet)})
                      
        
    }
}






struct OurNews_Previews: PreviewProvider {
  
    static var previews: some View {
        OurNews(AddedMessage: Binding<String>.constant("Post4".localized),
                    AddedName: Binding<String>.constant("Rakan"),AddedGender: Binding<String>.constant("MaleProfile"))
       
    }
}

