//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Denis Kalugin on 10.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var ColorsActive = [true, false, false]
    @State private var buttonTitle = "START"
    
    
    var body: some View {
        VStack {
            RedColorView(color: .red, isActive: ColorsActive[0])
            YellowColorView(color: .yellow, isActive: ColorsActive[1])
            GreenColorView(color: .green, isActive: ColorsActive[2])
            
            Spacer()
            
            Button(action: { self.changeActiveColor()}) {
                Text("START")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(Color(UIColor.systemBlue))
                    .foregroundColor(.white)
                    .cornerRadius(40)
            }
            
            
        }
        .padding(.top, 40)
    }
    private func changeActiveColor() {
        for index in 0 ..< ColorsActive.count {
            if ColorsActive[index] == true {
                ColorsActive[index].toggle()
                if index + 1 < ColorsActive.count {
                    ColorsActive[index + 1].toggle()
                } else {
                    ColorsActive[0].toggle()
                }
                return
            }
        }
        
        
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

