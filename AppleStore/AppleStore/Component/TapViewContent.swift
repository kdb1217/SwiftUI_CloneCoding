//
//  TapViewContent.swift
//  AppleStore
//
//  Created by 김다빈 on 2023/05/29.
//

import SwiftUI

struct TapViewContent: View {
    var title : String
    var content : String
    var product_image : String
    var body: some View {
        HStack{
            VStack{
                Image(systemName: product_image)
                    .resizable()
                    .frame(width: 45,height: 43,alignment:.top)
                    .padding(.trailing,12)
                    .padding(.bottom, 12)
                    .padding(.leading, 20)
            }
            .frame(width: 77)
            VStack(alignment: .leading){
                Text(title)
                    .frame(alignment: .leading)
                    .bold()
                    .font(.system(size: 13))
                    .padding(.bottom, 4)
                Text(content)
                    .frame(alignment: .leading)
                    .font(.system(size: 12))
                    .padding(.bottom, 4)
                    .foregroundColor(Color("ColorFontGray"))
                Text("더 알아보기")
                    .foregroundColor(.blue)
                    .font(.system(size: 12))
                    .padding(.bottom,48)
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 138)
    }
}

struct TapViewContent_Previews: PreviewProvider {
    static var previews: some View {
        TapViewContent(title: "무료배송", content: "집으로 배송 받으세요. 아니면 Apple Store에서 재고\n재품을 픽업하세요", product_image: "airpodspro.chargingcase.wireless")
    }
}
