//
//  CategoryView.swift
//  SwiftUI_self#1
//
//  Created by 정종문 on 2022/05/11.
//

import SwiftUI

struct CategoryView : View {
    var body: some View{
        
        VStack(alignment: .leading, spacing: 0){
            Rectangle().frame(height: 0)
            Text("혼자 만들어보기")
                .font(.system(size: 23))
                .fontWeight(.black)
                .padding(.bottom,5)
            Text("10:00AM - 11:00AM")
                .foregroundColor(.gray)
                
            Spacer().frame(height: 20)
            HStack{
                Image("new1")
                    .resizable()
                    .frame(width: 50,height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth : 5)
                            .foregroundColor(Color.blue)
                    )
                Image("new2")
                    .resizable()
                    .frame(width: 50,height: 50)
                    .clipShape(Circle())
                Image("new3")
                    .resizable()
                    .frame(width: 50,height: 50)
                    .clipShape(Circle())
                
                Spacer()
                Text("확인")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 70)
                    .background(Color.blue)
                    .cornerRadius(20)
            }
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
        
    }
}

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
