//
//  Smallcard.swift
//  SwiftUI_self#1
//
//  Created by 정종문 on 2022/05/11.
//

import SwiftUI

struct SmallCard : View {
    var body: some View{
        HStack(spacing:15){
            Image(systemName: "flame.fill")
                .font(.system(size: 55))
                .foregroundColor(.white)
                .padding(.leading,20)
            VStack(alignment: .leading, spacing: 0){
                
                Text("일찍 일어나기")
                    .font(.system(size: 30))
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .padding(.bottom,5)
                    
                Text("8PM - 10PM")
                    .font(.system(size: 20))
                    .fontWeight(.thin)
                    .foregroundColor(.white)
                    .padding(.bottom,5)
            }
            Spacer()
        }
        .frame(width: 400, height: 100)
        .background(Color.purple)
        .cornerRadius(20)
        .padding(.top,5)
            
    }
}

struct SmallCard_Previews: PreviewProvider {
    static var previews: some View {
        SmallCard()
    }
}
