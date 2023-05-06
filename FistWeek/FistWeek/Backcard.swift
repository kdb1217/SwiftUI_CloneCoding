//
//  Backcard.swift
//  FistWeek
//
//  Created by 김다빈 on 2023/05/05.
//

import SwiftUI

struct Backcard: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var body: some View {
     
        ZStack{
            Rectangle()
                .fill(Color("cardbg"))
                .cornerRadius(24)
                .frame(width:343,height: 463)
                .shadow(radius: 4)
            VStack{
                Spacer()
                Text("한 눈에 보는 출석 규정")
                    .padding(.bottom, 34)
                    .font(.system(size: 20))
                    .padding(.trailing,130)
                    .padding(.leading,40)
                
                if (colorScheme == .light){
                    Image("calendarlight")
                        .resizable()
                        .frame(width:163 ,height: 287)
                        .padding(.bottom, 73)
                        .padding(.leading, 89)
                        .padding(.trailing, 91)
                }
                else if(colorScheme == .dark){
                    Image("calendar")
                        .resizable()
                        .frame(width:163 ,height: 287)
                        .padding(.bottom, 73)
                        .padding(.leading, 89)
                        .padding(.trailing, 91)
                }
                        
                }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 463)
        .padding(.bottom, 30)
    }
}

struct Backcard_Previews: PreviewProvider {
    static var previews: some View {
        Backcard()
    }
}
