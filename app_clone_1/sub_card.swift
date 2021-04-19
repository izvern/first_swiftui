//
//  sub_card.swift
//  app_clone_1
//
//  Created by izvern on 2021/04/18.
//

import SwiftUI

struct sub_card: View {
    var body: some View {
        HStack(spacing: 0.0){
            Image(systemName: "hands.sparkles.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
                Spacer().frame(width: 12)
            VStack(alignment: .leading, spacing: 0.0){
                Rectangle().frame(height: 0)
                Text("깃허브 클론 코딩")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer().frame(height: 5)
                
                Text("8PM ~ 10PM")
                    .font(.body)
            }
            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
        }
        .padding(20)
        .background(Color.purple)
        .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
    }
}

struct sub_card_Previews: PreviewProvider {
    static var previews: some View {
        sub_card()
    }
}
