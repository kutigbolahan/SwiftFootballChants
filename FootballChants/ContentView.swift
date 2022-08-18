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
        NavigationView{
            ScrollView{
                LazyVStack (spacing: 24){
                    ForEach(viewModel.teams){
                        team in  TeamCardView(team: team) { selectedTeam in
                            viewModel.togglePlayBack(for: selectedTeam)
                        }
                    }
                }.padding(.top, 8)
            }.padding(.horizontal, 8).navigationBarTitle("Football Chants")
        }
        
       
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
