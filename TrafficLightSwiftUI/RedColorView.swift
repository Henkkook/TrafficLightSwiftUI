//
//  RedColorView.swift
//  TrafficLightSwiftUI
//
//  Created by Denis Kalugin on 10.01.2023.
//

import SwiftUI

struct RedColorView: View {
    let color: Color
    let isActive: Bool
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.black, lineWidth: 10))
            .shadow(radius: 10)
            .opacity(isActive ? 1.0 : 0.2)
            

    }
}

struct RedColorView_Previews: PreviewProvider {
    static var previews: some View {
        RedColorView(color: .red, isActive: true)
    }
}
