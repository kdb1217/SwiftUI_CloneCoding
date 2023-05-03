//
//  BtnComponent.swift
//  FistWeek
//
//  Created by 김다빈 on 2023/05/03.
//

import SwiftUI

struct BtnComponent: View {
    var body: some View {
        Button {
            print("출쓱하자")
        } label: {
            Text("출쓱하기")
                .frame(maxWidth: .infinity)
        }

    }
}

struct BtnComponent_Previews: PreviewProvider {
    static var previews: some View {
        BtnComponent()
    }
}
