//
//  my_list.swift
//  app_clone_1
//
//  Created by izvern on 2021/04/21.
//

import SwiftUI

struct my_list: View {
    var body: some View {
//        List{
//            ForEach(1 ... 10, id: \.self){
//                my_card(icon: "gamecontroller.fill", title: "깃허브 클론 코딩 \($0)", s_time: "8PM", e_time: "10PM", bg_color: Color.green)
//            }
//        }
        List{
            Section(header: Text("헤더")){
                my_card(icon: "gamecontroller.fill", title: "깃허브 클론 코딩", s_time: "8PM", e_time: "10PM", bg_color: Color.green)
            }
        }
    }
}

struct my_list_Previews: PreviewProvider {
    static var previews: some View {
        my_list()
    }
}
