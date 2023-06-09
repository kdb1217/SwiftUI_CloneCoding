//
//  ContentView.swift
//  FistWeek
//
//  Created by 김다빈 on 2023/04/27.
//

import SwiftUI

struct ContentView: View {
    @State private var fliped = false
    var body: some View {
        ZStack{
            Color("bg")
                .ignoresSafeArea()
            VStack(alignment: .trailing, spacing: 0) {
                Spacer()
                Header()
                    .border(Color.blue)
               TextView()
                    .border(.brown)
                FlipView(frontCard: FrontCard(), backCard: BackCard(), showBack: $fliped)
                    .border(Color.orange)
                Button {
                    print("출썩했어영")
                } label: {
                    Text("출쓱하기")
                }
                .buttonStyle(BtnComponent())
                .border(Color.red)
            }.ignoresSafeArea()
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
