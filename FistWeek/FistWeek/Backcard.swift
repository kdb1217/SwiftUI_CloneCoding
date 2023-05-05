//
//  Backcard.swift
//  FistWeek
//
//  Created by 김다빈 on 2023/05/05.
//

import SwiftUI

struct Backcard: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    @State var filped: Bool = false
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
        .rotation3DEffect(filped ? Angle(degrees: -180): .zero, axis: (x: 0.0, y: -180, z: 0.0),perspective: 0.2)
        .rotation3DEffect(filped ? Angle(degrees: -180): .zero, axis: (x: 0.0, y: -180, z: 0.0),perspective: 0.2)
        .animation(.easeInOut(duration: 0.8), value: filped)
       
        .onTapGesture {
            filped.toggle()
        }
    }
}

struct Backcard_Previews: PreviewProvider {
    static var previews: some View {
        Backcard()
    }
}
