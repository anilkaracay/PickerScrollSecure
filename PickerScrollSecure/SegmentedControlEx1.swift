//
//  SegmentedControlEx1.swift
//  PickerScrollSecure
//
//  Created by Macbook Air on 7.05.2021.
//

import SwiftUI

struct SegmentedControlEx1: View {
    @State private var morningNight = "Gündüz"
    @State private var sekme = 1
    @State private var select = -1
    var body: some View {
        VStack(spacing:20){
            Text("Segmented Control Picker").font(.largeTitle)
            Picker("",selection: $morningNight){
                Text("Gündüz").tag("Gündüz")
                Text("Gece").tag("Gece")
            }.pickerStyle(SegmentedPickerStyle()).padding()
            Text("Görüntülerle birlikte oluşturalım").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Picker("",selection:$sekme){
                Image(systemName: "sun.min").tag(0)
                Image(systemName: "moon").tag(1)
            }.pickerStyle(SegmentedPickerStyle()).padding()
            Text("Günde kaç öğün yersiniz ? ").font(.title2).foregroundColor(.gray)
            Picker("",selection:$select){
                Text("Bir").tag(0)
                Text("İki").tag(1)
                Text("Üç").tag(2)
                Text("Daha Fazla").tag(3)
            }.pickerStyle(SegmentedPickerStyle()).background(RoundedRectangle(cornerRadius: 8).stroke(Color.red,lineWidth: select == -1 ? 2 : 0)).padding(.horizontal)
        }
    }
}

struct SegmentedControlEx1_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControlEx1()
    }
}
