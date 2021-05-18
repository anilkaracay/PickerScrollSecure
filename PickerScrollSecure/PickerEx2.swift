//
//  PickerEx2.swift
//  PickerScrollSecure
//
//  Created by Macbook Air on 6.05.2021.
//

import SwiftUI

struct PickerEx2: View {
    @State private var city = 2
    @State private var selectedSeries = "Punisher"
    var body: some View {
        VStack(spacing:25){
            Text("Picker Örnek - 2").foregroundColor(.red).font(.largeTitle)
            Picker(selection: $city, label: Text(""), content: {
                Text("Ankara").tag(1)
                Text("İstanbul").tag(2)
                Text("İzmir").tag(3)
                Text("Bodrum").tag(4)
            }).padding(.horizontal).background(Color(red: 0.1, green:0.2, blue:0.3)).cornerRadius(15).shadow(radius: 5).foregroundColor(.white).labelsHidden().padding()
            
            Text("Bugün hangi diziyi izleyeceksiniz ? ").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.gray)
            Picker(selection: $selectedSeries, label: Text(""), content: {
                Text("Prison Break").tag("Prison Break")
                Text("Punisher").tag("Punisher")
                Text("Game of Thrones").tag("GOT")
                Text("Breaking Bad").tag("Breaking bad")
            }).labelsHidden().padding(.horizontal).background(RoundedRectangle(cornerRadius: 15).stroke(Color.purple,lineWidth: 5)).padding()
            
        }
    }
}

struct PickerEx2_Previews: PreviewProvider {
    static var previews: some View {
        PickerEx2()
    }
}
