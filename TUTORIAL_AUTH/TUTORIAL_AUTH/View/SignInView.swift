//
//  LoginView.swift
//  TUTORIAL_AUTH
//
//  Created by 정종문 on 2022/05/15.
//

import SwiftUI

struct SignInView: View{
    
    @State var nameInput : String = ""
    @State var emailInput : String = ""
    @State var pwInput : String = ""
    @State var pw_checkInput : String = ""
    
    var body: some View{
        VStack{
            Form{
                Section(header: Text("Name")
                    .font(.system(size:20))
                    .fontWeight(.black),
                        content: {
                    TextField("Write Your name", text: $nameInput).keyboardType(.default)
                })
                Section(header: Text("email")
                    .font(.system(size:20))
                    .fontWeight(.black),
                        content: {
                    TextField("email@example.com", text: $emailInput).keyboardType(.default)
                })

                Section(header: Text("Password")
                    .font(.system(size:20))
                    .fontWeight(.black),
                        content: {
                    SecureField("비밀번호", text: $pwInput).keyboardType(.default)
                    SecureField("비밀번호 확인", text: $pw_checkInput).keyboardType(.default)
                })

                Section{
                    Button(action: {
                        if($pwInput.wrappedValue != $pw_checkInput.wrappedValue){
                            print("희망하는 비밀번호를 다시 입력해주십시오")
                        }
                        else{
                            print("name : \($nameInput.wrappedValue) \n Email : \($emailInput.wrappedValue) \n Password : \($pwInput.wrappedValue) \n 계정생성이 완료되었습니다.")
                        }
                    }, label: {
                        HStack(spacing: 10){
                            Spacer()
                            Text("Resister")
                                .font(.system(size: 30))
                                .fontWeight(.black)
                            Image(systemName: "checkmark")
                                .font(.system(size: 25))
                                .foregroundColor(.white)
                                .padding(5)
                                .background(Color.green)
                            Spacer()
                        }
                        
                    })
                }
            }
        }.navigationTitle("Resister Account")
    }
}


#if DEBUG
struct SignInView_Previews : PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
#endif
