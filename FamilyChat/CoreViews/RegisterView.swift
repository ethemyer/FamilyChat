//
//  loginview.swift
//  FamilyChat
//
//  Created by Ethem Yer on 29.04.2025.
//

import SwiftUI

struct RegisterView: View {
    
    @State var Mail: String = ""
    @State var Sifre: String = ""
    
    @FocusState private var isYaziKlavyesiGosterilmis: Bool
    
    
    
    var body: some View {
        VStack {
            
            Text("FamilyChat")
                .fontWeight(.bold)
                .font(.largeTitle)
                .foregroundStyle(.red)
           
            
            TextField("Mailinizi giriniz...", text: $Mail)
                .keyboardType(.emailAddress)
                .focused($isYaziKlavyesiGosterilmis)
            
            TextField("Şifrenizi giriniz...", text: $Sifre)
                .focused($isYaziKlavyesiGosterilmis)
            
            
            Button("Kayıt Ol") {
                
            }
            .frame(width: 300, height: 50)
            .background(Color.blue)
            .foregroundStyle(.white)
            .cornerRadius(20)
           
        }
        .padding()
        .padding(.top, 100)
        
    }
}


#Preview {
    RegisterView()
}
