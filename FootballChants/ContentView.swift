//
//  ContentView.swift
//  FootballChants
//
//  Created by GB on 7/4/22.
//

import SwiftUI

struct ContentView: View {
    let team: Team
    var body: some View {
      
        VStack(alignment: .leading){
            HStack(alignment: .top, spacing: 12){
                Image(team.id.badge)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(team: Team.dummyData[0])
    }
}
