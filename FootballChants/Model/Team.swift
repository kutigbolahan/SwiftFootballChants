//
//  Team.swift
//  FootballChants
//
//  Created by GB on 7/5/22.
//

import Foundation

struct Team {
    
    let id: TeamType
    let name: String
    let info: String
    let manager: Manager
    let founded: String
    var isPlaying: Bool = false
}


extension Team{
    
  static  var dummyData:[Team]{
        return[
            Team(id: .arsenal,
                 name: "Team 1", info: "Dummy Information", manager: Manager(name: "Manager 1", job: .manager), founded: "1881"),
            Team(id: .astonVilla,
                 name: "Team 2", info: "Dummy Information", manager: Manager(name: "Manager 2", job: .headCoach), founded: "1981"),
            Team(id: .brighton,
                 name: "Team 3", info: "Dummy Information", manager: Manager(name: "Manager 3", job: .manager), founded: "1771"),
            Team(id: .burnley,
                 name: "Team 4", info: "Dummy Information", manager: Manager(name: "Manager 4", job: .manager), founded: "1791"),
            Team(id: .chelsea, name: "Team 5", info:  "Dummy Information", manager: Manager(name: "Manager 5", job: .headCoach), founded: "1872"),
            
        ]
    }
}
