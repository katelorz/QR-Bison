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
    
    var body: some View {
        VStack {
            //NavigationView{
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
                    action: { }, label: {Text("Log In")}
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
        //}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
