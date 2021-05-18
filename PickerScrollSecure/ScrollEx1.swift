//
//  ScrollEx1.swift
//  PickerScrollSecure
//
//  Created by Macbook Air on 6.05.2021.
//

import SwiftUI

struct ScrollEx1: View {
    @State private var names = ["Ahmet","Anıl","Ahmet","Ahmet","Ahmet","Ahmet","Ahmet","Ahmet","Ahmet","Ahmet","Ahmet","Ahmet","Ahmet","Ahmet","Ahmet","Ahmet","Ahmet","Ahmet","Ahmet","Ahmet"]
    var body: some View {
        NavigationView{
            GeometryReader{ gr in
                ScrollView{
                    ForEach(self.names, id: \.self){name in
                        NavigationLink(destination:DetailView(personName: name)){
                            HStack{
                                Text(name).foregroundColor(.primary)
                                Image(systemName: "checkmark.seal.fill").foregroundColor(.green)
                                Spacer()
                                Image(systemName:  "chevron.right.circle.fill").foregroundColor(.red)
                            }.font(.system(size: 24, weight:.bold, design: .rounded)).padding().cornerRadius(8).background(Color.white).shadow(radius: 2, y:3 )
                            
                        }
                    }.frame(width:gr.size.width-35)
                            
                        }
                       
                
            }.navigationBarTitle(Text("Kişi Listesi"))
            
        }
    }
}

struct DetailView: View{
    @Environment(\.presentationMode) var presentationMode
    var personName : String
    var body: some View{
        ZStack{
            Color.black
            Text(self.personName).bold().font(.largeTitle).padding().foregroundColor(.white)
        }.navigationBarTitle(Text("Kişi Detayları"),displayMode:.inline).edgesIgnoringSafeArea(.bottom)
    }
}

struct ScrollEx1_Previews: PreviewProvider {
    static var previews: some View {
        ScrollEx1()
    }
}
