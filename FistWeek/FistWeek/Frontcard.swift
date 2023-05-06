//
//  Frontcard.swift
//  FistWeek
//
//  Created by 김다빈 on 2023/05/03.
//

import SwiftUI

struct Frontcard: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color("cardbg"))
                .cornerRadius(24)
                .frame(width:343,height: 463)
                .shadow(radius: 4)
                VStack{
                    Spacer()
                    Image("cute")
                        .resizable()
                        .frame(width: 152,height: 226)
                        .padding(.leading, 99)
                        .padding(.trailing,92)
                        .padding(.bottom,42)
                    Text("오늘은 아카데미 휴일! \n푹 쉬고 다음에 만나요.")
                        .font(.system(size: 18))
                        .lineSpacing(6)
                        .padding(.bottom,16)
                    HStack{
                        Text("출석 규정 보러가기")
                            .foregroundColor(Color("text"))
                            .font(.system(size: 13))
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width:8,height: 12)
                            .foregroundColor(Color("text"))
                            
                    }
                    .padding(.bottom,30)
                }
               
            }
        .frame(maxWidth: .infinity)
        .frame(height: 463)
        .padding(.bottom, 30)
        
    }
}

struct Frontcard_Previews: PreviewProvider {
    static var previews: some View {
        Frontcard()
    }
}
