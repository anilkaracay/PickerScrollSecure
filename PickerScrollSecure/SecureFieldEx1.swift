//
//  SecureFieldEx1.swift
//  PickerScrollSecure
//
//  Created by Macbook Air on 7.05.2021.
//

import SwiftUI

struct SecureFieldEx1: View {
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        VStack(spacing:20){
            Image("raze").resizable().frame(width:100,height: 100).padding(.top,55)
            Spacer()
            Text("Secure Field Örnek - 1").font(.largeTitle)
            Text("Uygulama Login Ekranı").font(.headline).foregroundColor(.red)
            TextField("Kullanıcı Adınızı girin",text:$username).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.horizontal)
            SecureField("Parolanızı Giriniz",text:$password).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.horizontal)
            HStack{
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Giriş Yap").padding()
                })
                
            }
            
            
            Spacer()
        }
    }
}

struct SecureFieldEx1_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldEx1()
    }
}
