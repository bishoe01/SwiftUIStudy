//
//  ContentView.swift
//  SwiftUI_self#1
//
//  Created by 정종문 on 2022/05/11.
//

import SwiftUI

struct ContentView: View {
    @State var isNavigationBarHidden : Bool = false
    var body: some View {
        
        NavigationView{
            ZStack(alignment: .bottomTrailing){
                VStack(alignment: .leading){
                    HStack(alignment: .top, spacing: 0){
                        
                        NavigationLink(destination: myList()){
                            Image(systemName: "list.bullet.circle.fill")
                                .font(.system(size: 40))
                                .foregroundColor(.black)
                                .padding()
                                
                        }
                        
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
                            MyCard(icon: "flame.fill", title: "일찍 일어나기", start_time: "8AM", end_time: "9AM", cardColor: Color.purple)
                            MyCard(icon: "square.and.pencil", title: "블로그 기록하기", start_time: "10AM", end_time: "11AM", cardColor: Color.orange)
                            MyCard(icon: "books.vertical", title: "일찍 일어나기", start_time: "1PM", end_time: "5PM", cardColor: Color.indigo)
                            MyCard(icon: "applelogo", title: "iOS개발 공부", start_time: "8PM", end_time: "1AM", cardColor: Color.black)
                            
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
            }//ZSTACK
            .navigationTitle("뒤로가기")
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear{
                self.isNavigationBarHidden = true
            }
            
        }//NAVIGATION VIEW
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
