//
//  myList.swift
//  SwiftUI_self#1
//
//  Created by 정종문 on 2022/05/14.
//

import SwiftUI


struct myList : View {
    
    @Binding var isNavigationBarHidden : Bool
    
    init(isNavigationBarHidden : Binding<Bool> = .constant(false)){
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    var body: some View{
        
        List{
        Section(header : Text("오늘 할 일")
                ,footer: Text("footer")
            .font(.system(size: 20))
            .fontWeight(.black)){
                ForEach(1...3, id: \.self){
                    itemIndex in
                    MyCard(icon: "square.and.pencil", title: "블로그 기록하기\(itemIndex)", start_time: "10AM", end_time: "11AM", cardColor: Color.orange)
                }
            }.listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
        Section(header : Text("내일 할 일")
            .font(.system(size: 20))
            .fontWeight(.black)){
                ForEach(1...3, id: \.self){
                    itemIndex in
                    MyCard(icon: "square.and.pencil", title: "블로그 기록하기\(itemIndex)", start_time: "10AM", end_time: "11AM", cardColor: Color.black)
                    }
                }.listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
                .listRowBackground(Color.gray)

        }.navigationTitle("내 목록")
        .navigationTitle("메인")
        .navigationBarHidden(self.isNavigationBarHidden)
        .onAppear{
            self.isNavigationBarHidden = true
        }
            
        
        
        
        
    }
    
}

struct myList_previews: PreviewProvider {
    static var previews: some View {
        myList()
    }
}
