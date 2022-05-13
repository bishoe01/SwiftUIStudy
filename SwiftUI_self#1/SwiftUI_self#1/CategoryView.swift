//
//  CategoryView.swift
//  SwiftUI_self#1
//
//  Created by 정종문 on 2022/05/11.
//

import SwiftUI

struct CategoryView : View {
    
    @State var showAlert : Bool = false
    @State var profileCheck : Bool = false
    
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
                Button(action: {
                    print("profile Clicked")
                    self.profileCheck = true
                    
                }){
                    Image("new2")
                        .resizable()
                        .frame(width: 50,height: 50)
                        .clipShape(Circle())
                }
                
                
                Image("new3")
                    .resizable()
                    .frame(width: 50,height: 50)
                    .clipShape(Circle())
                
                Spacer()
                
                //버튼 기능
                Button(action: {
                    print("Button Clicked")
                    
                    self.showAlert = true
                    
                }){
                    Text("Btn")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 70)
                        .background(Color.blue)
                        .cornerRadius(20)
                }.alert(isPresented: $showAlert){
                    Alert(title : Text("알림창입니다 !"))
                }
                
                
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

//버튼 action에 대한 숙지가필요
//예시 ) 버튼 눌렀을 때 원하는 액션하는 방법
