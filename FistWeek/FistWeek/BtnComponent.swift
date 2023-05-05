//
//  BtnComponent.swift
//  FistWeek
//
//  Created by 김다빈 on 2023/05/03.
//

import SwiftUI

struct BtnComponent: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack{
            Rectangle()
                .fill(Color("btnbg"))
                .frame(height: 100)
                .frame(maxWidth: .infinity)
                .cornerRadius(50)
               
            
            
            configuration.label
                .foregroundColor(Color.white)
                .frame(alignment: .center)
                .font(.system(size: 20))
        }
            .padding(.leading, 25)
            .padding(.trailing, 26)
            .padding(.bottom, 25)
    }
}

