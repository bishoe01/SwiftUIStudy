//
//  ContentView.swift
//  TUTORIAL_AUTH
//
//  Created by 정종문 on 2022/05/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 0){
                Image(systemName: "lock.shield")
                    .font(.system(size: 160))
                Spacer()
                NavigationLink(destination: LoginView(), label: {
                    HStack{
                        Spacer()
                        Text("로그인 하러가기")
                        Spacer()
                    }//Hstack
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                })
                .padding(.bottom,10)
                NavigationLink(destination: SignInView(), label: {
                    HStack{
                        Spacer()
                        Text("회원가입 하러가기")
                        Spacer()
                    }//Hstack
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                })
                
                Spacer().frame(height:40)
                
                NavigationLink(destination: Text("My Profile"), label: {
                    HStack{
                        Spacer()
                        Text("내 프로필 보러가기")
                        Spacer()
                    }//Hstack
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                })
                .padding(.bottom,10)
                NavigationLink(destination: Text("User List"), label: {
                    HStack{
                        Spacer()
                        Text("사용자 목록 보러가기")
                        Spacer()
                    }//Hstack
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                })
                Spacer()
                Spacer()
            }//Vstack
            .padding()
        }//NavigationView
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
