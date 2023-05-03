//
//  ContentView.swift
//  FistWeek
//
//  Created by 김다빈 on 2023/04/27.
//

import SwiftUI

struct ContentView: View {
    @State private var filped: Bool = false
    var body: some View {
        ZStack{
            Color("bg")
                .ignoresSafeArea()
            VStack {
                Header()
                    .border(Color.blue)
            }
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}