//
//  TextView.swift
//  FistWeek
//
//  Created by 김다빈 on 2023/05/05.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("월클 디벨로퍼 Rash.\n오늘도 화이팅하세요!")
                .lineLimit(2)
                .font(.system(size: 18))
                .padding(.leading, 25)
                .lineSpacing(8)

        }
        .frame(maxWidth: .infinity,alignment: .leading)
        .padding(.bottom, 38)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
