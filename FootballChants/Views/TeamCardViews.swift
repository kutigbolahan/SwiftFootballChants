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
                    Image(team.id.badge).resizable().scaledToFit().frame(width: 50, height: 50).accessibility(label: Text("\(team.name) Badge"))
                    VStack(alignment: .leading, spacing: 5){
                        Text(team.name).font(.system(size: 18,weight: .bold)).accessibility(label: Text("Team Name"))
                            .accessibility(label: Text(team.name))
                        Text("Founded: \(team.founded)").font(.system(size: 12,weight: .light)).accessibility(label: Text("Team Founded"))
                            .accessibility(label: Text(team.founded))
                        Text("Current \(team.manager.job.rawValue): \(team.manager.name)").font(.system(size: 10,weight: .light)).accessibility(label: Text("\(team.manager.job.rawValue)"))
                            .accessibility(label: Text(team.manager.name))
                        Text(team.info).font(.system(size: 12,weight: .medium)).accessibility(label: Text("Team Information"))
                            .accessibility(label: Text(team.info))
                    }
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: "play.circle.fill").resizable().scaledToFit()
                    })
                    .frame( maxWidth: 40,maxHeight: .infinity, alignment: .center)
                }
        }
        .applyTeamCardStyle(teamType: team.id)
        
    }
}

struct TeamCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TeamCardView(team: Team.dummyData[0]).previewLayout(PreviewLayout.fixed(width: 400, height: 150)).padding().previewDisplayName("Dummy data 1: Team Card Preview")
            TeamCardView(team: Team.dummyData[1 ]).previewLayout(PreviewLayout.fixed(width: 400, height: 150)).padding().previewDisplayName("Dummy data 2: Team Card Preview")
        }
    }
}

