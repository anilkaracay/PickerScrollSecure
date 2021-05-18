//
//  PickerEx3.swift
//  PickerScrollSecure
//
//  Created by Macbook Air on 6.05.2021.
//

import SwiftUI

struct PickerEx3: View {
    @State private var selectedPerson = 1
    var body: some View {
        VStack(spacing:20){
            Text("Picker Örnek -3").font(.largeTitle).foregroundColor(.red).bold()
            Picker(selection: $selectedPerson, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/, content: {
                RowPicker(name:"Anıl").foregroundColor(.white)
                RowPicker(name:"Bülent").foregroundColor(.white)
                RowPicker(name:"Selda").foregroundColor(.white)
                RowPicker(name:"Begüm").foregroundColor(.white)
            }).padding(.horizontal).labelsHidden().background(Color(red:0.1,green:0.2,blue:0.3)).cornerRadius(15).shadow(radius:8 ).padding(.horizontal)
            
        }
    }
}

struct RowPicker: View{
    var name : String
    var body: some View{
        return HStack{
            Image(systemName: "person.fill").padding(.trailing).foregroundColor(.red)
            Text(name)
        }.tag(name)
    }
}

struct PickerEx3_Previews: PreviewProvider {
    static var previews: some View {
        PickerEx3()
    }
}
