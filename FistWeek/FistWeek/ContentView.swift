//
//  ContentView.swift
//  FistWeek
//
//  Created by 김다빈 on 2023/04/27.
//

import SwiftUI

struct ContentView: View {
    @State private var filp: Bool = false
    var body: some View {
        ZStack{
            Color("bg")
                .ignoresSafeArea()
            VStack {
                Spacer()
                Header()
                    .border(Color.blue)
                TextView()
                    .border(Color.green)
                
                if !filp{
                        Frontcard()
                        .onTapGesture
                        {
                            filp.toggle()
                        }
                }
                else {
                        Backcard()
                            .rotation3DEffect(filp ? Angle(degrees: -180): .zero, axis: (x: 0.0, y: 180, z: 0.0),perspective: 0.2)
                            .animation(.easeInOut(duration: 0.8), value: filp)
                            .rotation3DEffect(filp ? Angle(degrees: -180): .zero, axis: (x: 0.0, y: 180, z: 0.0),perspective: 0.2)
                            .onTapGesture {
                                filp.toggle()
                            }
                }
                    
                Button {
                    print("출썩했어영")
                } label: {
                    Text("출쓱하기")
                }
                .buttonStyle(BtnComponent())
                .border(Color.red)

            }
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
