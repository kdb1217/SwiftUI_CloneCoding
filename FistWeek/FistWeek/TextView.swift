//
//  TextView.swift
//  FistWeek
//
//  Created by 김다빈 on 2023/05/05.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack{
            Text("월클 디벨로퍼 Rash. \n오늘도 화이팅하세요!")
                .font(.system(size: 18))
                .lineSpacing(8)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,25)
        }
        .padding(.bottom, 38)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
