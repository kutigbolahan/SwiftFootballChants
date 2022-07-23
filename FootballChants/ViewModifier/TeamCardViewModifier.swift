//
//  TeamCardViewModifier.swift
//  FootballChants
//
//  Created by GB on 7/24/22.
//


import SwiftUI

struct TeamCardViewModifier: ViewModifier{
    let teamType : TeamType
    func body(content: Content) -> some View {
        content .padding(8)
            .foregroundColor(.white)
            .background(teamType.background)
        .cornerRadius(10)
    }
    
    
}
