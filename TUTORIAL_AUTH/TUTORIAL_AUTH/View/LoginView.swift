//
//  LoginView.swift
//  TUTORIAL_AUTH
//
//  Created by 정종문 on 2022/05/15.
//

import SwiftUI

struct LoginView: View{
    
    @State var emailInput : String = ""
    @State var pwInput : String = ""
    
    var body: some View{
        VStack{
            Form{
                Section(header: Text("로그인 정보"),
                        content: {
                    TextField("EMAIL", text: $emailInput).keyboardType(.emailAddress)
                        .autocapitalization(.none)
                    SecureField("PASSWORD", text: $pwInput).keyboardType(.default)
                        
                })
                Section{
                    Button(action: {
                        print(
                            "Email :\($emailInput.wrappedValue)\n PW: \($pwInput.wrappedValue)"
                        )
                    }, label: {
                        HStack(spacing: 10){
                            Spacer()
                            Image(systemName: "key.fill")
                            Text("LOGIN")
                            Spacer()
                        }
                        
                    })
                }
            }
        }.navigationTitle("로그인 페이지")
    }
}


#if DEBUG
struct LoginView_Previews : PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
#endif
