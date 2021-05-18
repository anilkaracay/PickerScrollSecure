//
//  PickerEx1.swift
//  PickerScrollSecure
//
//  Created by Macbook Air on 6.05.2021.
//

import SwiftUI

struct PickerEx1: View {
    @State private var adressCity = 2
    @State private var selectedCapital = "Türkiye"
    var body: some View {
        VStack(spacing:20){
            Text("Picker").font(.largeTitle)
            Text("Giriş").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.gray)
            Text("Picker içindeki her bir elemeana id değerini atamamamız gerekiyor. bUNUN için tag fonk kullanabiliriz.").frame(maxWidth:.infinity).padding().font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).background(Color(red:0.1,green:0.2,blue:0.3)).foregroundColor(.white)
            Picker(selection: $adressCity, label: Text("Adres : "), content: {
                Text("İstanbul").tag(1)
                Text("Ankara").tag(2)
                Text("İzmir").tag(3)
                Text("Bodrum").tag(4)
            }).padding(.horizontal)
            
            Text("Etiket değerleri String, Int veya Bool tipinden olabilir.").frame(maxWidth:.infinity).padding().font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).background(Color(red:0.1,green:0.2,blue:0.1)).foregroundColor(.white)
            Picker(selection:$selectedCapital, label:
                    Text("Başkentler")) {
                Text("Londra").tag("İngiltere")
                Text("Paris").tag("Fransa")
                Text("Ankara").tag("Türkiye")
                Text("Berlin").tag("Almanya")
                Text("Moskova").tag("Rusya")
            }.padding(.horizontal)
        }
    }
}

struct PickerEx1_Previews: PreviewProvider {
    static var previews: some View {
        PickerEx1()
    }
}
