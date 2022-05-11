//
//  Smallcard.swift
//  SwiftUI_self#1
//
//  Created by 정종문 on 2022/05/11.
//

import SwiftUI

struct SmallCard : View {
    var body: some View{
        HStack{
            
            Image(systemName: "flame.fill")
                .font(.system(size: 55))
                .padding(.leading,20)
            VStack(alignment: .leading, spacing: 0){
                
                Text("유튜브 라이브 버닝")
                    .font(.system(size: 30))
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .padding(.bottom,5)
                    
                Text("8PM - 10PM")
                    .font(.system(size: 20))
                    .padding(.bottom,5)

            }
            Spacer()
        }
        .frame(width: 400, height: 100)
        .background(Color.purple)
        .cornerRadius(20)
        .padding()
            
    }
}

struct SmallCard_Previews: PreviewProvider {
    static var previews: some View {
        SmallCard()
    }
}
