//
//  ContentView.swift
//  SwiftUI_self#1
//
//  Created by 정종문 on 2022/05/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            CategoryView()
            CategoryView()
            CategoryView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
