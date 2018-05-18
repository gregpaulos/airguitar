//
//  song.swift
//  airGuitarMain
//
//  Created by gregory paulos on 5/18/18.
//  Copyright © 2018 gregory paulos. All rights reserved.
//

import Foundation

class Song {
    let songPattern: [URL]
    let needsMultipleAudioPlayers: Bool
    
    init(passedSongPattern: [URL], passedNeedsMultipleAudioPlayers: Bool) {
        songPattern = passedSongPattern
        needsMultipleAudioPlayers = passedNeedsMultipleAudioPlayers
    }
}
