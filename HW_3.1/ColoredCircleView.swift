//
//  ColoredCircleView.swift
//  HW_3.1
//
//  Created by Егор Кромин on 22.01.2022.
//

import SwiftUI

struct ColoredCircleView: View {
    let color: Color
    let hiLight: Bool
        
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(hiLight ? 1 : 0.4)
            .frame(width: 140, height: 140)
            .overlay(Circle().stroke(Color.gray, lineWidth: 2))
            .shadow(radius: 10)
    }
    }

struct ColoredCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColoredCircleView(color: .blue, hiLight: false)
    }
}
