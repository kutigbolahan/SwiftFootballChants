//
//  ContentView.swift
//  FootballChants
//
//  Created by GB on 7/4/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = TeamsViewModel()
    var body: some View {
      
        List {
            ForEach(viewModel.teams){
                team in  TeamCardView(team: team) { selectedTeam in
                    print("Selected Team: \(selectedTeam)")
                }
            }
      
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
