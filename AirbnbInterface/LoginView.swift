//
//  LoginView.swift
//  AirbnbInterface
//
//  Created by Francesca Pia Gargiulo on 14/11/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        
        VStack{
            
            Spacer()
            
            
                HStack{
                    Spacer().frame(width: 15)
                    Text("Please log in").bold().font(.system(size: 28))
                        .fontWeight(.regular)
                    Spacer()
                }
                
                Spacer().frame(height: 15)
                
                Text("In order to be able to perform more actions, you need to log in.").fontWeight(.regular)
            Spacer().frame(height: 30)
            
            VStack{
                HStack{
                    
                    Spacer().frame(width: 20)
                    Group{
                        
                        Button {
                            print("TOMBOLA")
                        } label: {
                            Text("Log in").bold()
                                .padding()
                                .foregroundStyle(.white)
                                .background(.pink, in: RoundedRectangle(cornerRadius: 8))
                        }.accessibilityAddTraits([.isButton]).accessibilityLabel("Log in")

                        
                        
                    }
                    
                    
                    Spacer().frame(width: 250)
                    
                }
                Spacer().frame(height: 300)
            }
            
        }.padding()
    }
}

#Preview {
    LoginView()
}

/*Button(action: {
 print("tombola")
}) {
label: do {
 Image(systemName: "chevron.backward").foregroundStyle(Color.blue).font(.system(size: 30))
     .frame(width: 35, height: 35)
}
}
 

 Button(action: {
  print("tombola")
 }) {
 label: do {
  Text("Log in").foregroundStyle(Color.blue).frame(width: 35, height: 35).overlay(RoundedRectangle())
 }
 }
 
 
 
 */
