//
//  Ad.swift
//  AppleStore
//
//  Created by 김다빈 on 2023/05/29.
//

import SwiftUI

struct Ad: View {
    var product : String
    var introduce: String
    var image: String
    var body: some View {
        VStack(spacing: 0){
         
                ZStack{
                    Image(image)
                        .resizable()
                        .frame(maxWidth: .infinity)
                        .frame(height: 600)
                    VStack(alignment: .leading,spacing: 0){
                        Text("New")
                            .foregroundColor(Color("ColorFontGray"))
                            .font(.system(size: 10))
                            .frame(alignment: .leading)
                            .padding(.bottom, 2)
                        Text(product)
                            .bold()
                            .font(.system(size: 30))
                            .padding(.bottom, 12)
                        Text(introduce)
                            .lineLimit(2)
                            .font(.system(size: 13))
                        
                    }
                    .padding(.leading, 20)
                    .padding(.bottom,453)
                    .frame(maxWidth: .infinity)
                }
               
             
    
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("ColorRecBack"))
                    HStack(){
                        Text("₩1,250,000원부터")
                            .padding(.leading,20)
                            .font(.system(size: 10))
                        Spacer()
                        ZStack{
                            RoundedRectangle(cornerRadius: 17)
                                .frame(width: 80,height: 28)
                                .foregroundColor(Color("ColorButtonGray"))
                            Text("구입하기")
                                .bold()
                                .font(.system(size: 13))
                                .foregroundColor(.blue)
                        }
                        .padding(.trailing,20)

                        
                       

                    }
                }
                .frame(maxWidth: .infinity)
                .frame(height: 67)
            }
        }
    }


struct Ad_Previews: PreviewProvider {
    static var previews: some View {
        Ad(product: "iPhone 14", introduce: "iphone 14 그리고 듬직한 사이즈의 iPhone 14 Plus, 획기적인 도약을 이뤄낸 배터리 성능, 프로급 카메라, 6가지 멋진 컬러",image: "ImgIphoneProduct")
    }
}
