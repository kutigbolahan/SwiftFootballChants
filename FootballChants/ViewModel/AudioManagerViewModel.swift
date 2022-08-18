//
//  AudioManagerViewModel.swift
//  FootballChants
//
//  Created by GB on 8/18/22.
//

import Foundation
import AVKit


class AudioManagerViewModel{
    
    private var chantsAudioPlayer: AVAudioPlayer?
    
    func playBack(_ team: Team)  {
        if team.isPlaying {
            chantsAudioPlayer?.stop()
        }else{
            guard let path = Bundle.main.path(forResource: "\(team.id.chantFile).mp3", ofType: nil) else {return}
            let url = URL(fileURLWithPath: path)
            do {
            chantsAudioPlayer =    try AVAudioPlayer(contentsOf: url)
                chantsAudioPlayer?.numberOfLoops = -1
                chantsAudioPlayer?.play()
            } catch  {
                print(error)
            }
        }
       
    }
}
