//
//  CardView.swift
//  SlotAppTest
//
//  Created by Macintosh on 4/23/20.
//  Copyright © 2020 IVDEV. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    @Binding var symbol:String
    
    var body: some View {
        Image(symbol)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .background(Color(.white).opacity(0.6))
            .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(symbol: .constant("star"))
    }
}
