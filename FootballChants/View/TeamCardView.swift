//
//  TeamCardView.swift
//  FootballChants
//
//  Created by GB on 7/24/22.
//

import SwiftUI

struct TeamCardView: View {
    let team: Team
    var body: some View {
       
        VStack(alignment: .leading){
                HStack(alignment: .top, spacing: 12){
                    Image(team.id.badge).resizable().scaledToFit().frame(width: 50, height: 50)
                    VStack(alignment: .leading, spacing: 5){
                        Text(team.name).font(.system(size: 18,weight: .bold))
                        Text("Founded: \(team.founded)").font(.system(size: 12,weight: .light))
                        Text("Manager").font(.system(size: 10,weight: .light))
                        Text(team.info).font(.system(size: 12,weight: .medium))
                    }
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: "play.circle.fill").resizable().scaledToFit()
                    })
                    .frame( maxWidth: 40,maxHeight: .infinity, alignment: .center)
                }
        }
        .applyTeamCardStyle(teamType: team.id)    }
}

struct TeamCardView_Previews: PreviewProvider {
    static var previews: some View {
        TeamCardView(team: Team.dummyData[0])
    }
}
