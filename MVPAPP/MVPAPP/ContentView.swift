//
//  ContentView.swift
//  MVPAPP
//
//  Created by 정종문 on 2022/05/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("study")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .cornerRadius(30)
                VStack{
                    Spacer()
                    Text("메인 화면")
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                    Spacer()
                    NavigationLink(destination: LoginPage()){
                        Text("시작하기")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
            }
            .navigationBarTitle("",displayMode: .automatic)
            .navigationBarHidden(true)
        }//navigation
    }//body
}//view

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
