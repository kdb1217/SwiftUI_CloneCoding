//
//  SwipePromotion.swift
//  AppleStore
//
//  Created by 김다빈 on 2023/05/27.
//

import SwiftUI

struct SwipePromotion: View {
    let titles : [String] = ["무료배송","Apple Trade In", "Airpod Pro"]
    let contents : [String] = ["집으로 배송 받으세요. 아니면 Apple Store에서 재고\n재품을 픽업하세요","iPhone 8 이후 모델을 보상 판매하면 iPhone 14\n또는 iPhone 14 Pro 구입 시 사용할 수 있는 ₩40,000 ~ \n₩780,000 상당의 크래딧이.*","에어팟 프로를 잃어버렸습니다.\n제발 제 에어팟 프로를 찾아주세요.\n찾아주신 분에겐 ₩20,000 상당의 크레딧이.*"]
    let product_images: [String] = ["shippingbox","macbook.and.iphone","airpodspro.chargingcase.wireless"]
    
    var body: some View {
        TabView{
            TapViewContent(title: titles[0], content: contents[0], product_image: product_images[0])
            TapViewContent(title: titles[1], content: contents[1], product_image: product_images[1])
            TapViewContent(title: titles[2], content: contents[2], product_image: product_images[2])
        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .onAppear {
                setupAppearance()
            }
            .frame(height: 138)
            .frame(maxWidth: .infinity)
    }
}

func setupAppearance() {
    UIPageControl.appearance().currentPageIndicatorTintColor = .black
    UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
}

struct SwipePromotion_Previews: PreviewProvider {
    static var previews: some View {
        SwipePromotion()
    }
}
