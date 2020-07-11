//
//  ContentView.swift
//  FistAppSwiftUI
//
//  Created by Adan Reséndiz on 13/06/20.
//  Copyright © 2020 Adan Reséndiz. All rights reserved.
//

import SwiftUI

struct Settings{
    static let fbColor = Color(red:56/255, green: 87/255, blue: 163/255)
}

struct CustomTextField: View{
    //Local Vars
    @State var textValue: String = ""
    var placeHolder: String = ""
    var msk: String = ""
    
    var body: some View{
        TextField(placeHolder, text: $textValue)
            .padding(.all, 10)
            .foregroundColor(.black)
            .accentColor(/*@START_MENU_TOKEN@*/.pink/*@END_MENU_TOKEN@*/)
            .background(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
            .cornerRadius(25)
    }
}

struct ContentView: View {
    //Local Vars
    @State var emailValue: String = ""
    @State var passwordValue: String = ""
    @State var changeTitle = false
    
    var body: some View {
        ScrollView{
            VStack(spacing:20) {
                Image("LogoFB")
                    .resizable()
                    .frame(width: 250, height: 54)
                    .clipped()
                    .scaledToFit()
                Text("Inicia sesión para continuar")
                    .fontWeight(.light)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding(10)
                
                CustomTextField(textValue: emailValue,placeHolder: "Email")
                SecureField("Password", text: $passwordValue)
                    .padding(.all, 10)
                    .foregroundColor(.black)
                    .accentColor(/*@START_MENU_TOKEN@*/.pink/*@END_MENU_TOKEN@*/)
                    .background(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
                    .cornerRadius(25)
                    .accentColor(Color.init("FBColor"))
                /*TextField("email", text: $emailValue)
                 .padding(.all, 10)
                 .foregroundColor(.black)
                 .accentColor(/*@START_MENU_TOKEN@*/.pink/*@END_MENU_TOKEN@*/)
                 .background(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
                 .cornerRadius(25)*/
                
                Button(action: {
                    // action clic
                    self.changeTitle.toggle()
                }) {
                    Text("Iniciar Sesión")
                        .fontWeight(.medium)
                        .padding(.all)
                        .background(Color.white.opacity(0.3))
                        .foregroundColor(Color.white)
                        .cornerRadius(25)
                }
                
                if changeTitle {
                    Text("Touch")
                    .fontWeight(.medium)
                    .padding(.all)
                    .background(Color.white.opacity(0.3))
                    .foregroundColor(Color.white)
                    .cornerRadius(25)
                }
            }
            .padding([.top, .leading, .trailing], 50)
            
        }
            //set color with struct code
            //.background(Settings.fbColor)
            //set color with Assets Color
            .background(Color.init("FBColor"))
            .edgesIgnoringSafeArea(Edge.Set.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
