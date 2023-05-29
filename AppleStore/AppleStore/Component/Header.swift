//
//  Header.swift
//  AppleStore
//
//  Created by 김다빈 on 2023/05/27.
//

import SwiftUI

struct Header: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("쇼핑하기")
                    .font(.system(size: 30))
                    .bold()
                    .padding(.leading, 20)
                
                Image("HeaderLogo")
                    .resizable()
                    .frame(width: 37 ,height: 36,alignment: .trailing)
                    .padding(.leading, 205)
            }
            .frame(maxWidth: .infinity)
        }
        .frame(maxWidth: .infinity,alignment: .leading)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
