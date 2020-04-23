//
//  ContentView.swift
//  SlotAppTest
//
//  Created by Macintosh on 4/23/20.
//  Copyright © 2020 IVDEV. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            
            //Background
            Rectangle()
                .foregroundColor(Color(red: 200/255, green: 143/255, blue: 32/255))
                .edgesIgnoringSafeArea(.all)
            
            Rectangle()
                .foregroundColor(Color(red: 228/255, green: 195/255, blue: 76/255))
                .rotationEffect(Angle(degrees: 45))
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                //Title
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text("SwiftUI Slots")
                        .bold()
                        .foregroundColor(.white)
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }.scaleEffect(2)
                
                //Credits counter
                Text("Credits: 1000")
                    .foregroundColor(.black)
                    .padding(.all, 10.0)
                    .background(Color(.white).opacity(0.5))
                    .cornerRadius(20)
                
                //Cards
                HStack{
                    
                    Spacer()
                    
                    Image("apple")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .background(Color(.white).opacity(0.6))
                        .cornerRadius(20)
                    
                    Image("apple")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .background(Color(.white).opacity(0.6))
                        .cornerRadius(20)
                    
                    Image("apple")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .background(Color(.white).opacity(0.6))
                        .cornerRadius(20)
                    
                    Spacer()
                }
                
                //Button
                
                Button(action: {
                    //TODO
                }) {
                    Text("Spin")
                    .bold()
                        .foregroundColor(.white)
                        .padding(.all, 10.0)
                        .background(Color(.systemPink))
                    .cornerRadius(20)
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
