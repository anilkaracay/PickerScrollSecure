//
//  ScrollViewEx2.swift
//  PickerScrollSecure
//
//  Created by Macbook Air on 6.05.2021.
//

import SwiftUI

struct ScrollViewEx2: View {
    var colors : [Color] = [.gray,.purple,.blue,.green,.orange,.pink,.purple,.yellow]
    var body: some View {
        GeometryReader{ gr in
            VStack(spacing:20){
                Spacer()
                Text("Scroll View Örnek 2").font(.largeTitle)
                Text("Yatay Scroll Özelliği").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.gray)
                ScrollView(Axis.Set.horizontal,showsIndicators: true){
                    HStack{
                        ForEach(self.colors, id:\.self){color in
                            RoundedRectangle(cornerRadius: 15).fill(color).frame(width:gr.size.width-70,height:200)
                            
                        }
                    }
                }.padding(.horizontal)
                Spacer()
            }
            
        }
    }
}

struct ScrollViewEx2_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewEx2()
    }
}
