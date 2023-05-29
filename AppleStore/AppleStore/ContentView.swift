//
//  ContentView.swift
//  AppleStore
//
//  Created by 김다빈 on 2023/05/27.
//

import SwiftUI

struct ContentView: View {
    let products : [String] = ["iPhone 14", "iPad"]
    let introduces: [String] = ["iPhone 14 그리고 큼직한 사이즈의 iPhone 14 Plus, 획기적인\n도약을 이뤄낸 배터리 성능, 프로급. 카메라,6가지 멋진 컬러","다양한 일상 작업에 맞는 완전히 새롭고 컬러풀한 iPad, 새로운 iPad를 소개합니다."]
    let images: [String] = ["ImgIphoneProduct","ImgIpadProduct"]
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ScrollView {
                Header()
                    .padding(.top,54)
                Divider()
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                SwipePromotion()
                Divider()
                Ad(product: products[0], introduce: introduces[0], image: images[0])
                Ad(product: products[1], introduce: introduces[1], image: images[1])
                Text("추천")
                    .bold()
                    .font(.system(size: 24))
                    .frame(maxWidth: .infinity)
                    .frame(alignment: .leading)
                SwipeProduct()
               
            }
          
           
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
