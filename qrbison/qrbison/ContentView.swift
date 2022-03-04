//
//  ContentView.swift
//  QR Bison
//
//  Created by Kate Lorenzo on 2/13/22.
//  Modified by Obaidullah Bakali
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var needlogin: Bool = true
    
    var body: some View {
        
        if needlogin {
        VStack {
                Spacer()
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
                
                Text("QR Bison")
                    .font(.system(size: 70))
                    .padding()
                
                Spacer()
                
                VStack(alignment: .leading){
                    Text("Username: ")
                    TextField(
                        "",
                        text: $username
                    )
                        .disableAutocorrection(true)
                }
                .padding(.leading, 30)
                .padding(.trailing, 30)
                
                VStack(alignment: .leading) {
                    Text("Password: ")
                    TextField(
                        "",
                        text: $password
                    )
                        .disableAutocorrection(true)
                }
                .padding(.leading, 30)
                .padding(.trailing, 30)
                .padding(.bottom, 30)
                
                Button(
                    action: {
                        needlogin = false
                    }, label: {Text("Log In")}
                )
                    .foregroundColor(Color.white)
                    .frame(width: 310)
                    .padding(10)
                    .background(.blue)
                    .cornerRadius(10)
                
                Link("Forgot password?", destination: URL(string: "https://ssl.gallaudet.edu/passwordassistance/")!)
                
                Spacer()
                Spacer()
            }
            .textFieldStyle(.roundedBorder)
        }

    else {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


