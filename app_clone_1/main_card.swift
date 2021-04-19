//
//  main_card.swift
//  app_clone_1
//
//  Created by izvern on 2021/04/18.
//

import SwiftUI

struct main_card: View {
    
    @State var shouldShowAlert: Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Rectangle().frame(height: 0)
            Text("클론 프로젝트")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 3.0)
            Text("10AM ~ 11AM")
                .foregroundColor(.secondary)
                .padding(.bottom, 5.0)
            HStack{
                Image("1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.red, lineWidth: 4))
                Image("2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Image("3")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Spacer()
                
                
                Button(action: {
                    print("확인버튼을 누르셨습니다.")
                    self.shouldShowAlert = true
                }){
                    Text("확인")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(20)
                        .frame(width: 80)
                        .background(Color.blue)
                        .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                }
                .alert(isPresented: $shouldShowAlert){
                    Alert(title: Text("알림창!"))
                }
            }
            .padding(.top, 5.0)
        }
        .padding(10)
        .background(Color.yellow)
        .cornerRadius(25)
    }
}

struct main_view_Previews: PreviewProvider {
    static var previews: some View {
        main_card()
    }
}

