//
//  IconsView.swift
//  SwiftUIAnimationDemo
//
//  Created by Agota Matyas on 05/09/2019.
//  Copyright © 2019 Rebeloper. All rights reserved.
//

import SwiftUI

struct IconsView: View {
    
    @State var iconTapped = false
    
    var body: some View {
        ZStack {
            IconView(imageName: "icon1", animationDuration: 1.2)
                .offset(x: 80) // 200 : 80
                .scaleEffect(0.8) // 0.7 : 0.8
                .rotation3DEffect(Angle(degrees: 0), axis: (x: 5, y: 10, z: 0)) // 15 : 0
            IconView(imageName: "icon2", animationDuration: 0.7)
                .offset(x: -80) // -200 : -80
                .scaleEffect(0.8) // 0.7 : 0.8
                .rotation3DEffect(Angle(degrees: 0), axis: (x: -5, y: -10, z: 0)) // 15 : 0
            IconView(imageName: "icon3", animationDuration: 1)
                .offset(y: 0) // -10 : 0
                .scaleEffect(1) // 1.2 : 1
                .onTapGesture {
                       self.iconTapped.toggle()
        }
        .padding(.horizontal, 20)
       
        }
    }
}

struct IconsView_Previews: PreviewProvider {
    static var previews: some View {
        IconsView()
    }
}
