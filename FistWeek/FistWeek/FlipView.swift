//
//  FlipView.swift
//  FistWeek
//
//  Created by 김다빈 on 2023/05/06.
//

import SwiftUI

struct FlipView<Frontcard: View, Backcard: View>: View {
    
    let frontCard: Frontcard
    let backCard: Backcard
    
    @Binding var showBack: Bool
    var body: some View {
        ZStack(){
            frontCard
                .modifier(FlipOpacity(percentage: showBack ? 0 : 1))
                .rotation3DEffect(Angle.degrees(showBack ? 180 : 360), axis: (0,1,0),perspective: 0.4)
            backCard
                .modifier(FlipOpacity(percentage: showBack ? 1 : 0))
                .rotation3DEffect(Angle.degrees(showBack ? 0 : 180), axis: (0,1,0),perspective: 0.4)
        }
        .onTapGesture {
            withAnimation {
                self.showBack.toggle()
            }
        }
       
        
    }
}

private struct FlipOpacity: AnimatableModifier {
   var percentage: CGFloat = 0
   
   var animatableData: CGFloat {
      get { percentage }
      set { percentage = newValue }
   }
   
   func body(content: Content) -> some View {
      content
           .opacity(Double(percentage.rounded()))
   }
}
