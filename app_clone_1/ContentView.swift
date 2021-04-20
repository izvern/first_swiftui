//
//  ContentView.swift
//  app_clone_1
//
//  Created by izvern on 2021/04/18.
//

import SwiftUI

struct ContentView: View {
    

    var body: some View {
        ZStack(alignment: .bottomTrailing){
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "line.horizontal.3")
                        .padding(.leading, 5)
                    
                    Spacer()
                    
                    Image(systemName: "person.circle.fill")
                        .padding(.trailing, 20.0)
                }
                .padding(.leading)
                .font(.system(size: 35))
                
                Spacer().frame(height: 5)
                
                Text("IOS 클론코딩 프로젝트")
                    .font(.system(size: 35))
                    .fontWeight(.bold)
                    .padding()
                
                ScrollView{
                    VStack{
                        main_card()
                        sub_card()
                        my_card(icon: "gamecontroller.fill", title: "게임시간", s_time: "6PM", e_time: "9PM", bg_color: Color.blue)
                        my_card(icon: "book.fill", title: "공부시간", s_time: "9PM", e_time: "10PM", bg_color: Color.black)
                        my_card(icon: "figure.walk", title: "운동시간", s_time: "10PM", e_time: "11PM", bg_color: Color.green)
                        my_card(icon: "hand.thumbsup.fill", title: "샤워시간", s_time: "11PM", e_time: "12PM", bg_color: Color.pink)
                        my_card(icon: "hand.raised.slash.fill", title: "명상시간", s_time: "12PM", e_time: "1AM", bg_color: Color.gray)
                        my_card(icon: "hand.raised.slash.fill", title: "취침시간", s_time: "1AM", e_time: "8AM", bg_color: Color.orange)
                    }
                }
            }
            .padding(5)
            Circle()
                .foregroundColor(.yellow)
                .frame(width: 60.0, height: 60.0)
                .overlay(
                    Image(systemName: "plus")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                )
                .padding(.trailing, 10)
                .shadow(radius: 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
