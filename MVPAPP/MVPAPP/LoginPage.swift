//
//  LoginPage.swift
//  MVPAPP
//
//  Created by 정종문 on 2022/05/14.
//

import SwiftUI

struct LoginPage : View {
    
    @State var name : String = ""
    @State var PW : String = ""
    var body: some View{
        VStack(alignment: .leading){
            Spacer()
            HStack(spacing : 5){
                
                VStack{
                    Text("ID").fontWeight(.bold).padding(.bottom,10.0)
                    Text("PW").fontWeight(.bold).padding(.top, 10)
                }
                .padding(.leading)
                VStack{
                    TextField("Enter your ID", text: $name)
                        .textFieldStyle(.roundedBorder)
                    TextField("Enter your Password", text: $PW)
                        .textFieldStyle(.roundedBorder)
                }
                .padding(.trailing)
            }
            
        Spacer()
            NavigationLink(destination: SignInPage()){
                Text("If you don`t hava an account, Please SignIn")
                    .foregroundColor(.blue)
                    .font(.system(size:13))
                    .padding(29)
            }
            
                
        Spacer()
            
        }
        .navigationTitle("LOGIN PAGE")
        
    }
}

struct LoginPage_Previews: PreviewProvider{
    static var previews: some View {
        LoginPage()
    }
}
