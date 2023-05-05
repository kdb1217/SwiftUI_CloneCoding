//
//  Backcard.swift
//  FistWeek
//
//  Created by 김다빈 on 2023/05/05.
//

import SwiftUI

struct Backcard: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color("cardbg"))
                .cornerRadius(24)
                .frame(width:343,height: 463)
            VStack{
            Text("한 눈에 보는 출석 규정")
                .font(.system(size: 20))
                .padding(.bottom,35)
                .padding(.trailing,130)
                .padding(.leading,40)
            Image("calendar")
                    .resizable()
                    .frame(width: 164,height: 389)
                    .padding(.bottom, 73)
                    .padding(.leading, 89)
                    .padding(.trailing, 91)
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 463)
        .padding(.bottom,30)
    }
}

struct Backcard_Previews: PreviewProvider {
    static var previews: some View {
        Backcard()
    }
}
