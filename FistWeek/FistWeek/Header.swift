//
//  Header.swift
//  FistWeek
//
//  Created by 김다빈 on 2023/05/03.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack(alignment: .center){
            Image(systemName: "calendar")
                .foregroundColor(Color.blue)
                .frame(width: 28, height: 27)
                .padding(.trailing,16)
            Image(systemName: "gearshape")
                .foregroundColor(Color.blue)
                .frame(width: 28, height: 27)
                .padding(.trailing,30)
        }
        .frame(maxWidth: .infinity,alignment: .trailing)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
