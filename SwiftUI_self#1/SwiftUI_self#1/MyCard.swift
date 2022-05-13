//
//  Smallcard.swift
//  SwiftUI_self#1
//
//  Created by 정종문 on 2022/05/11.
//

import SwiftUI

struct MyCard : View {
    
    var icon : String
    var title : String
    var start_time : String
    var end_time : String
    var cardColor : Color
    
    
    var body: some View{
        HStack(spacing:10){
            Image(systemName: icon)
                .font(.system(size: 45))
                .foregroundColor(.white)
                .padding(.leading,20)
            VStack(alignment: .leading, spacing: 0){
                
                Text(title)
                    .font(.system(size: 30))
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .padding(.bottom,5)
                    
                Text("\(start_time) - \(end_time)")
                    .font(.system(size: 20))
                    .fontWeight(.thin)
                    .foregroundColor(.white)
                    .padding(.bottom,5)
            }
            Spacer()
        }
        .frame(width: 320, height: 100)
        .background(cardColor)
        .cornerRadius(20)
        .padding(.top, 5)
            
    }
}
struct myCard_previews: PreviewProvider {
    static var previews: some View {
        MyCard(icon: "square.and.pencil", title: "블로그 기록하기", start_time: "10AM", end_time: "11AM", cardColor: Color.orange)
    }
}
