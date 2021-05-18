//
//  SecureFieldEx2.swift
//  PickerScrollSecure
//
//  Created by Macbook Air on 7.05.2021.
//

import SwiftUI

struct SecureFieldEx2: View {
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        
        VStack(spacing:20){
            Text("Secure Field Örnek - 2").bold().font(.largeTitle)
            ZStack{
                RoundedRectangle(cornerRadius: 8).foregroundColor(.purple)
                TextField("Kullanıcı adınızı giriniz.",text:$username).foregroundColor(.white).padding()
            }.frame(height:50).padding(.horizontal)
            
            RoundedRectangle(cornerRadius: 8).foregroundColor(.purple).overlay(SecureField("Parolayı giriniz",text:$password).foregroundColor(.white).padding()).frame(height:50).padding(.horizontal)
            
        }
    }
}

struct SecureFieldEx2_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldEx2()
    }
}
