//
//  ContentView.swift
//  SwiftUI_self#1
//
//  Created by 정종문 on 2022/05/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack(alignment: .bottomTrailing){
            VStack(alignment: .leading){
                HStack(alignment: .top, spacing: 0){
                    Image(systemName: "list.bullet.circle.fill")
                        .font(.system(size: 40))
                        .padding()
                    Spacer()
                    Image(systemName: "person.crop.circle")
                        .font(.system(size: 40))
                        .padding()
                }.frame(width: .infinity)
                    .padding(-10)
                
                Text("오늘의 할일 목록")
                    .font(.system(size:40))
                    .fontWeight(.black)
                    .padding()
                    .padding(.bottom,-20)
                    
                ScrollView{
                    VStack{
                        
                        CategoryView()
                        SmallCard()
                        SmallCard()
                        SmallCard()
                        SmallCard()
                        SmallCard()
                        SmallCard()
                        SmallCard()
                        SmallCard()
                    }.padding()
                    
                }
            }
            Circle()
                .strokeBorder(.black,lineWidth: 3)
                .background(Circle().foregroundColor(.yellow))
                .frame(width: 60, height: 60)
                .overlay(
                    
                    Image(systemName: "plus")
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                )
                
                .padding(20)
                .shadow(radius: 20)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
