//
//  Data.swift
//  YoutubeExplorePageDemo
//
//  Created by Que on 8.10.2022.
//

import Foundation
struct NewAlbumSongs1{
   
    
    var songName:String?
    var artistName:String?
    var photoName:String?
    
    init(songName: String, artistName: String, photoName: String) {
        self.songName = songName
        self.artistName = artistName
        self.photoName = photoName
    }
}

struct TopSongs2{
   
    
    var songName:String?
    var artistName:String?
    var photoName:String?
    var upOrDownImage : String?
    init(songName: String, artistName: String, photoName: String,upOrDownImage: String) {
        self.songName = songName
        self.artistName = artistName
        self.photoName = photoName
        self.upOrDownImage = upOrDownImage
    }
    
    
}


struct MoodAndGenres{
  
    
    var moodName:String?
    var colorR:Double?
    var colorG:Double?
    var colorB:Double?
     init(moodName: String, colorR: Double, colorG: Double, colorB: Double) {
        self.moodName = moodName
        self.colorR = colorR
        self.colorG = colorG
        self.colorB = colorB
    }
}

