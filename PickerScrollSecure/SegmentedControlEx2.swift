//
//  SegmentedControlEx2.swift
//  PickerScrollSecure
//
//  Created by Macbook Air on 7.05.2021.
//

import SwiftUI

struct SegmentedControlEx2: View {
    @State private var computer = "Macbook Air"
    @State private var phone = "Iphone 12 Pro Max"
    var body: some View {
        VStack(spacing: 20){
            Text("Segmented Control Örnek 3 ").font(.largeTitle)
            Text("Hangi Mac Modelini Kullanıyorsunuz?").foregroundColor(.gray).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Picker("",selection:$computer){
                Text("Macbook Pro").tag("Macbook Pro")
                Text("Macbook Air").tag("Macbook Air")
                Text("iMac").tag("iMac")
            }.pickerStyle(SegmentedPickerStyle()).background(Color.yellow).padding()
            Text("Hangi Telefonu Kullanıyorsunuz?").font(.title3).foregroundColor(.gray)
            Picker("",selection:$phone){
                Text("Iphone 12").tag("Iphone 12")
                Text("Iphone 12 Pro Max").tag("Iphone 12 Pro Max")
                Text("Iphone 12 Pro").tag("Iphone 12 Pro")
            }.pickerStyle(SegmentedPickerStyle()).background(Color.red).cornerRadius(8).padding()
        }
        
    }
}

struct SegmentedControlEx2_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControlEx2()
    }
}
