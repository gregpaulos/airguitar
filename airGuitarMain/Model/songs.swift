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
        
        dictOfSongs["PRACTICE"] = Song(passedSongPattern: [Bundle.main.url(forResource: "D power", withExtension: "mp3")!, Bundle.main.url(forResource: "E power", withExtension: "mp3")!], passedNeedsMultipleAudioPlayers: false)
            
        dictOfSongs["BLACK SABBY"] = Song(passedSongPattern: [Bundle.main.url(forResource: "Sabbie1", withExtension: "mp3")!, Bundle.main.url(forResource: "Sabbie2", withExtension: "mp3")!, Bundle.main.url(forResource: "Sabbie3", withExtension: "mp3")!], passedNeedsMultipleAudioPlayers: false)
        
        dictOfSongs["FUNK 'N STUFF"] = Song(passedSongPattern: [Bundle.main.url(forResource: "funkyLowE", withExtension: "mp3")!, Bundle.main.url(forResource: "eminorwah", withExtension: "mp3")!, Bundle.main.url(forResource: "funkyLowE", withExtension: "mp3")!, Bundle.main.url(forResource: "dmajwah", withExtension: "mp3")!, Bundle.main.url(forResource: "funkyLowE", withExtension: "mp3")!,Bundle.main.url(forResource: "scratchy", withExtension: "mp3")!], passedNeedsMultipleAudioPlayers: true)
        
        dictOfSongs["FAREWELL JUNGLE"] = Song(passedSongPattern: [Bundle.main.url(forResource: "jungleopenfinal", withExtension: "mp3")!, Bundle.main.url(forResource: "jungleopenfinal", withExtension: "mp3")!, Bundle.main.url(forResource: "junglelickfinal", withExtension: "mp3")!, Bundle.main.url(forResource: "junglelickfinal", withExtension: "mp3")!, Bundle.main.url(forResource: "junglelickfinal", withExtension: "mp3")!,Bundle.main.url(forResource: "junglelickfinal", withExtension: "mp3")!,], passedNeedsMultipleAudioPlayers: true)
     
        dictOfSongs["SOLO!!!!"] = Song(passedSongPattern: [Bundle.main.url(forResource: "eSolo1", withExtension: "mp3")!, Bundle.main.url(forResource: "eSolo2", withExtension: "mp3")!, Bundle.main.url(forResource: "eSolo1", withExtension: "mp3")!, Bundle.main.url(forResource: "eSolo20", withExtension: "mp3")!, Bundle.main.url(forResource: "eSolo1", withExtension: "mp3")!, Bundle.main.url(forResource: "eSolo5", withExtension: "mp3")!,Bundle.main.url(forResource: "eSolo7", withExtension: "mp3")!,Bundle.main.url(forResource: "eSolo8", withExtension: "mp3")!], passedNeedsMultipleAudioPlayers: true)
        
        dictOfSongs["GET WEIRD"] = Song(passedSongPattern: [Bundle.main.url(forResource: "weirdDroneLouder", withExtension: "mp3")!, Bundle.main.url(forResource: "weirdnotes1", withExtension: "mp3")!, Bundle.main.url(forResource: "weirdnotes2", withExtension: "mp3")!, Bundle.main.url(forResource: "weirdnotes3", withExtension: "mp3")!, Bundle.main.url(forResource: "soloChop1", withExtension: "mp3")!,Bundle.main.url(forResource: "soloChop2", withExtension: "mp3")!,Bundle.main.url(forResource: "soloChop3", withExtension: "mp3")!,Bundle.main.url(forResource: "soloChop4", withExtension: "mp3")!,Bundle.main.url(forResource: "soloChop5", withExtension: "mp3")!,Bundle.main.url(forResource: "soloChop6", withExtension: "mp3")!,Bundle.main.url(forResource: "soloChop7", withExtension: "mp3")!,Bundle.main.url(forResource: "soloChop8", withExtension: "mp3")!,Bundle.main.url(forResource: "soloChop9", withExtension: "mp3")!,Bundle.main.url(forResource: "soloChop10", withExtension: "mp3")!,Bundle.main.url(forResource: "soloChop11", withExtension: "mp3")!,], passedNeedsMultipleAudioPlayers: true)
    
        
    }
    
}
