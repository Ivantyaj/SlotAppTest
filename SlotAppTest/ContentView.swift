//
//  ContentView.swift
//  SlotAppTest
//
//  Created by Macintosh on 4/23/20.
//  Copyright © 2020 IVDEV. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var symbols = ["apple", "star", "cherry"]
    
    @State private var numbers = [0, 2, 1]
    @State private var backgrounds = [Color.white, Color.white, Color.white]
    @State private var credits = 1000
    
    private var betAmount = 5
    
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
                Spacer()
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
                
                Spacer()
                //Credits counter
                Text("Credits: \(credits)")
                    .foregroundColor(.black)
                    .padding(.all, 10.0)
                    .background(Color(.white).opacity(0.5))
                    .cornerRadius(20)
                
                //Cards
                Spacer()
                HStack{
                    
                    Spacer()
                    
                    CardView(symbol: $symbols[numbers[0]], bgColor: $backgrounds[1])
                    CardView(symbol: $symbols[numbers[1]], bgColor: $backgrounds[1])
                    CardView(symbol: $symbols[numbers[2]], bgColor: $backgrounds[1])
                    
                    
                    Spacer()
                }
                
                Spacer()
                //Button
                
                Button(action: {
                    
                    self.backgrounds = self.backgrounds.map { _ in
                        Color.white
                    }
                    
                    self.numbers = self.numbers.map({ _ in
                        Int.random(in: 0...self.symbols.count - 1)
                    })
                    

                    
                    //Check winnings
                    if self.numbers[0] == self.numbers[1] &&
                        self.numbers[1] == self.numbers[2] {
                        
                        //Won
                        self.credits += self.betAmount * 10
                        
                        // Update bg to green
                        self.backgrounds = self.backgrounds.map { _ in
                            Color.green
                        }
                    } else {
                        self.credits -= self.betAmount
                    }
                    
                }) {
                    Text("Spin")
                    .bold()
                        .foregroundColor(.white)
                        .padding(.all, 10.0)
                        .padding([.leading, .trailing], 30)
                        .background(Color.pink)
                    .cornerRadius(20)
                }
                
                Spacer()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
