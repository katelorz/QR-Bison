
//  InformationPage.swift
//  QR Bison
//
//  Created by Vladimir Slavov on 2/20/22.
//

import SwiftUI

struct InformationPage: View {
    var body: some View {
        VStack{
            /* ZStack{
             Rectangle()
             .foregroundColor(Color.blue)
             
             
             } */
            
            ZStack{
                Rectangle()
                    .frame(width: 500, height: 150)
                    .rotationEffect(.degrees(2))
                    .foregroundColor(.gray)
                    .ignoresSafeArea(.all)
                
                Rectangle()
                    .position(x: 200, y: 65)
                    .frame(width: 500, height: 150)
                    .foregroundColor(.blue)
                    .rotationEffect(.degrees(-5))
                    .ignoresSafeArea(.all)
                
                
                Text("QR Bison")
                    .frame(width: 250, height: 150, alignment: .top)
                    .font(.system(size: 45))
                    .foregroundColor(.white)
                    .shadow(radius: 50)
                    .overlay(
                        Image("smalllogo")
                            .resizable()
                            .frame(width: 50, height:45, alignment: .topTrailing)
                            .position(x: 275, y: 5)
                    )
    
            }
     Spacer()
            
            Button(
                action: {
                    // did tap
                },
                label: { Text("Information") }
            )
                .foregroundColor(Color.white)
                .frame(width: 310)
                .padding(10)
                .background(.blue)
                .cornerRadius(10)
            
            Button(
                action: {
                    // did tap
                },
                label: { Text("Personal Infornation") }
            )
                .foregroundColor(Color.white)
                .frame(width: 310)
                .padding(10)
                .background(.blue)
                .cornerRadius(10)
            
            Button(
                action: {
                    // did tap
                },
                label: { Text("References") }
            )
                .foregroundColor(Color.white)
                .frame(width: 310)
                .padding(10)
                .background(.blue)
                .cornerRadius(10)
        }
    }
    
}



struct InformationPage_Previews: PreviewProvider {
    static var previews: some View {
        InformationPage()
    }
}


