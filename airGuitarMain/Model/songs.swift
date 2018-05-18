//
//  songs.swift
//  airGuitarMain
//
//  Created by gregory paulos on 5/18/18.
//  Copyright © 2018 gregory paulos. All rights reserved.
//

import Foundation

class Songs {
    var dictOfSongs = [String: Song]()
    
    
    init (){
        dictOfSongs["FUNK 'N STUFF"] = Song(passedSongPattern: [Bundle.main.url(forResource: "funkyLowE", withExtension: "mp3")!, Bundle.main.url(forResource: "eminorwah", withExtension: "mp3")!, Bundle.main.url(forResource: "funkyLowE", withExtension: "mp3")!, Bundle.main.url(forResource: "dmajwah", withExtension: "mp3")!, Bundle.main.url(forResource: "funkyLowE", withExtension: "mp3")!,Bundle.main.url(forResource: "scratchy", withExtension: "mp3")!], passedNeedsMultipleAudioPlayers: true)
    }
    
}
