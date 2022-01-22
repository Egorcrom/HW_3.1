//
//  ContentView.swift
//  HW_3.1
//
//  Created by Егор Кромин on 22.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var title = "Start"
    @State private var hiLights = [false, false, false]
    
    var body: some View {
        VStack {
            ColoredCircleView(color:.red, hiLight: hiLights[0])
            ColoredCircleView(color:.yellow, hiLight: hiLights[1])
            ColoredCircleView(color:.green, hiLight: hiLights[2])
            Spacer()
            Button(action: { nextLight() }) {
                Text(title)
            }
        }.padding()
    }
    
    private func nextLight() {
            
        if hiLights[0] == true {
            hiLights[0].toggle()
            hiLights[1].toggle()
        } else if hiLights[1] == true {
            hiLights[1].toggle()
            hiLights[2].toggle()
        } else if hiLights[2] == true {
            hiLights[2].toggle()
            hiLights[0].toggle()
        } else {
            hiLights[0].toggle()
            title = "Next"
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
