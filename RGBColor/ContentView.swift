//
//  ContentView.swift
//  RGBColor
//
//  Created by R on 08/06/1443 AH.
//  Copyright © 1443 R. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var RedValue: Double = 0.0
    @State var GreenValue: Double = 0.0
    @State var BlueValue: Double = 0.0

    var body: some View {
        VStack{
            Text("Red:\(RedValue,specifier: "%.2f")")
            Slider(value: $RedValue, in: 0...1)
                .padding()
                .accentColor(Color.red)
            Text("Green:\(GreenValue,specifier: "%.2f")")
            Slider(value: $GreenValue, in: 0...1)
                .padding()
                .accentColor(Color.green)
            Text("Blue:\(BlueValue,specifier: "%.2f")")
            Slider(value: $BlueValue, in: 0...1)
                .padding()
                .accentColor(Color.blue)
            Text("Result")
            Rectangle()
            .fill(Color(red: RedValue, green: GreenValue, blue: BlueValue))
            .frame(width: 200, height: 200)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
