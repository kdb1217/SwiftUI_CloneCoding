//
//  SwipeProduct.swift
//  AppleStore
//
//  Created by 김다빈 on 2023/05/29.
//

import SwiftUI
import UIKit
struct SwipeProduct: View {
    let totalwidth = UIScreen.main.bounds.width * 0.85
    @State var flag = 1
    var body: some View {
        GeometryReader{_ in
            ScrollViewReader{proxy in
                ScrollView(.horizontal){
                    HStack{
                        
                        Image("ImgSwipeProduct01")
                            .resizable()
                            .frame(width: totalwidth)
                            .padding(.leading,20)
                            .shadow(radius: 2)
                            .id(1)
                        Image("ImgSwipeProduct02")
                            .resizable()
                            .frame(width: totalwidth)
                            .padding(.leading,20)
                            .id(2)
                        Image("ImgSwipeProduct03")
                            .resizable()
                            .frame(width: totalwidth)
                            .padding(.leading, 20)
                            .padding(.trailing,20)
                            .id(3)
                        
                    }
                }
                .scrollDisabled(true)
                .gesture(
                    DragGesture()
                        .onEnded { value in
                            if value.translation.width > 0 {
                                if(flag > 1){
                                    withAnimation(.linear){
                                        flag -= 1
                                        proxy.scrollTo(flag,anchor: .center)
                                        print(flag)
                                    }
                                }
                            }
                            else if value.translation.width < 0 {
                                if(flag < 3){
                                    withAnimation(.linear){
                                        flag += 1
                                        proxy.scrollTo(flag,anchor: .center)
                                        print(flag)
                                    }
                                }
                            }
                        }
                    )
            }
          
       
        }
        .frame(height: 509)
    }
}


struct SwipeProduct_Previews: PreviewProvider {
    static var previews: some View {
      SwipeProduct()
    }
}
