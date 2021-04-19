//
//  my_card.swift
//  app_clone_1
//
//  Created by izvern on 2021/04/19.
//

import SwiftUI

struct my_card: View {
    
    var icon: String
    var title: String
    var s_time: String
    var e_time: String
    var bg_color: Color
    
    var body: some View {
        HStack(spacing: 0.0){
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(.white)
                Spacer().frame(width: 12)
            VStack(alignment: .leading, spacing: 0.0){
                Rectangle().frame(height: 0)
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer().frame(height: 5)
                
                Text("\(s_time) ~ \(e_time)")
                    .font(.body)
            }
            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
        }
        .padding(20)
        .background(bg_color)
        .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
    }
}

struct my_card_Previews: PreviewProvider {
    static var previews: some View {
        my_card(icon: "gamecontroller.fill", title: "깃허브 클론 코딩", s_time: "8PM", e_time: "10PM", bg_color: Color.green)
    }
}
