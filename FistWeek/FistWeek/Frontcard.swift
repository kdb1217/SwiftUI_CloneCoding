//
//  Frontcard.swift
//  FistWeek
//
//  Created by 김다빈 on 2023/05/03.
//

import SwiftUI

struct Frontcard: View {
    var body: some View {
        VStack{
            Text("월클 디벨로퍼 Rash\n오늘도 화이팅하세요!")
                .font(.system(size: 18))
        }
    }
}

struct Frontcard_Previews: PreviewProvider {
    static var previews: some View {
        Frontcard()
    }
}
