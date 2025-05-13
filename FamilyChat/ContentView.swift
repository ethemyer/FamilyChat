//
//  ContentView.swift
//  FamilyChat
//
//  Created by Ethem Yer on 28.04.2025.
//

import SwiftUI


struct ContentView: View {
    @State var Mail: String = ""
    @State var Sifre: String = ""
    
    
    @FocusState private var isYaziKlavyesiGosterilmis: Bool

    
    
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("FamilyChat")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .foregroundStyle(.red)
                Spacer()
                
                TextField("Mailinizi giriniz...", text: $Mail)
                    .keyboardType(.emailAddress)
                    .focused($isYaziKlavyesiGosterilmis)
                
                TextField("Şifrenizi giriniz...", text: $Sifre)
                    .focused($isYaziKlavyesiGosterilmis)
                
                NavigationLink {
                    RegisterView()
                } label: {
                    Text("Kayıt Ol")
                        .frame(width: 300, height: 50)
                        .background(Color.blue)
                        .foregroundStyle(.white)
                        .cornerRadius(20)
                }
                
                
//                Button("Kayıt Ol") {
////                    RegisterView()
//                }
//                .frame(width: 300, height: 50)
//                .background(Color.blue)
//                .foregroundStyle(.white)
//                .cornerRadius(20)
                
                Spacer()
                
                Button("Giriş Yap") {
                    
                }
                .frame(width: 300, height: 50)
                .background(Color.blue)
                .foregroundStyle(.white)
                .cornerRadius(20)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
