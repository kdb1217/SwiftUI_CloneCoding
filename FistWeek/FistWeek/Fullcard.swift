//
//  Fullcard.swift
//  FistWeek
//
//  Created by 김다빈 on 2023/05/05.
//

import SwiftUI

struct Fullcard: View {
    @State private var flipped: Bool = false
    @State private var animate3d = false
    var body: some View {
        
        return ZStack(){
            Frontcard().opacity(flipped ? 1.0 : 0.0)
            Backcard().opacity(flipped ? 0.0 : 1.0)
        }
        .modifier(FlipEffect(flipped: $flipped, angle: animate3d ? 180 : 0, axis: (x: 1, y: 0)))
                          .onTapGesture {
                                withAnimation(Animation.linear(duration: 0.8)) {
                                      self.animate3d.toggle()
                                }
                          }

       
       
    }
}


struct FlipEffect: GeometryEffect {
    
    var animatableData: Double {
        get { angle }
        set { angle = newValue}
    }
    
    @Binding var flipped: Bool
    var angle: Double
    let axis: (x: CGFloat, y: CGFloat)
    
    func effectValue(size: CGSize) -> ProjectionTransform {
        
        DispatchQueue.main.async {
            self.flipped = self.angle >= 90 && self.angle < 270
        }
        let tweakedAngle = flipped ? -180 + angle : angle
                   let a = CGFloat(Angle(degrees: tweakedAngle).radians)

                   var transform3d = CATransform3DIdentity;
                   transform3d.m34 = -1/max(size.width, size.height)

                   transform3d = CATransform3DRotate(transform3d, a, axis.x, axis.y, 0)
                   transform3d = CATransform3DTranslate(transform3d, -size.width/2.0, -size.height/2.0, 0)

                   let affineTransform = ProjectionTransform(CGAffineTransform(translationX: size.width/2.0, y: size.height / 2.0))

                   return ProjectionTransform(transform3d).concatenating(affineTransform)
        
    }
}


struct FrontCard : View {
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color("cardbg"))
                .cornerRadius(24)
                .frame(width:343,height: 463)
                .shadow(radius: 4)
                VStack{
                    Spacer()
                    Image("cute")
                        .resizable()
                        .frame(width: 152,height: 226)
                        .padding(.leading, 99)
                        .padding(.trailing,92)
                        .padding(.bottom,42)
                    Text("오늘은 아카데미 휴일! \n푹 쉬고 다음에 만나요.")
                        .font(.system(size: 18))
                        .lineSpacing(6)
                        .padding(.bottom,16)
                    HStack{
                        Text("출석 규정 보러가기")
                            .foregroundColor(Color("text"))
                            .font(.system(size: 13))
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width:8,height: 12)
                            .foregroundColor(Color("text"))
                            
                    }
                    .padding(.bottom,30)
                }
               
            }
        .frame(maxWidth: .infinity)
        .frame(height: 463)
        .padding(.bottom, 30)
        
    }
}

struct BackCard : View {
    var body: some View{
        @Environment(\.colorScheme) var colorScheme: ColorScheme
        @State var filped: Bool = false
         
            ZStack{
                Rectangle()
                    .fill(Color("cardbg"))
                    .cornerRadius(24)
                    .frame(width:343,height: 463)
                    .shadow(radius: 4)
                VStack{
                    Spacer()
                    Text("한 눈에 보는 출석 규정")
                        .padding(.bottom, 34)
                        .font(.system(size: 20))
                        .padding(.trailing,130)
                        .padding(.leading,40)
                    
                    if (colorScheme == .light){
                        Image("calendarlight")
                            .resizable()
                            .frame(width:163 ,height: 287)
                            .padding(.bottom, 73)
                            .padding(.leading, 89)
                            .padding(.trailing, 91)
                    }
                    else if(colorScheme == .dark){
                        Image("calendar")
                            .resizable()
                            .frame(width:163 ,height: 287)
                            .padding(.bottom, 73)
                            .padding(.leading, 89)
                            .padding(.trailing, 91)
                    }
                            
                    }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 463)
            .padding(.bottom, 30)
    }
}

struct Fullcard_Previews: PreviewProvider {
    static var previews: some View {
        Fullcard()
    }
}
