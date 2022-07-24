//
//  Manager.swift
//  FootballChants
//
//  Created by GB on 7/5/22.
//

import Foundation

enum Job: String {
    case manager = "Manager"
    case headCoach = "Head Coach"
}
struct Manager{
    let name: String
    let job: Job
}
