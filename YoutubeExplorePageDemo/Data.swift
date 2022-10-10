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


extension ViewController {
    
    func dataPrepare(){
        let  s1 = NewAlbumSongs1(songName: "Kuzu kuzu", artistName: "Tarkan", photoName: "album5")
        
        let  s2 = NewAlbumSongs1(songName: "Born to die", artistName: "Lana Del Rey", photoName: "lana")
        let  s3 = NewAlbumSongs1(songName: " Nothing else matters", artistName: "Metallica", photoName: "album3")
        let  s4 = NewAlbumSongs1(songName: "Bir kadın çizeceksin", artistName: "Manga", photoName: "album4")
        let  s5 = NewAlbumSongs1(songName: "Tünel", artistName: "Mor ve ötesi", photoName: "album1")
        let  s6 = NewAlbumSongs1(songName: "Master of puppets", artistName: "Metallica", photoName: "album3")
        
        
        
        let  ts1 = TopSongs2(songName: "Tünel", artistName: "Mor ve ötesi", photoName: "album1",upOrDownImage: "upIcon")
        let  ts2 = TopSongs2(songName: "Speak to me", artistName: "Pink Floyd", photoName: "pinkFloyd",upOrDownImage: "dotIcon")
        let  ts3 = TopSongs2(songName: "Let it be", artistName: "The Beatles ", photoName: "theBeatles",upOrDownImage: "downIcon")
        let  ts4 = TopSongs2(songName: "Nothing else matters", artistName: "Metallica", photoName: "album3",upOrDownImage: "downIcon")
        let  ts5 = TopSongs2(songName: "Med cezir", artistName: "Levent Yüksel", photoName: "leventYuksel",upOrDownImage: "upIcon")
        let  ts6 = TopSongs2(songName: "Born to die", artistName: "Lana Del Rey", photoName: "lana",upOrDownImage: "upIcon")
        let  ts7 = TopSongs2(songName: "Dünyadan uzak", artistName: "Mor ve ötesi", photoName: "album1",upOrDownImage: "upIcon")
        let  ts8 = TopSongs2(songName: "Cambaz", artistName: "Mor ve ötesi", photoName: "album2",upOrDownImage: "dotIcon")
      
        let  ts9 = TopSongs2(songName: "Bir kadın çizeceksin", artistName: "Manga", photoName: "album4",upOrDownImage: "downIcon")
        let  ts10 = TopSongs2(songName: "Kuzu kuzu", artistName: "Tarkan", photoName: "album5",upOrDownImage: "upIcon")
        let  ts11 = TopSongs2(songName: "Master of puppets", artistName: "Metallica", photoName: "album3",upOrDownImage: "upIcon")
        
        
        let m1 = MoodAndGenres(moodName: "Party", colorR: 183, colorG: 137, colorB: 248)
        let m2 = MoodAndGenres(moodName: "Rock and Metal", colorR: 140, colorG: 150, colorB: 160)
        let m3 = MoodAndGenres(moodName: "Romance", colorR: 195, colorG: 40, colorB: 28)
        let m4 = MoodAndGenres(moodName: "Seasons", colorR: 252, colorG: 236, colorB: 154)
        let m5 = MoodAndGenres(moodName: "Chill", colorR: 40, colorG: 50, colorB: 160)
        let m6 = MoodAndGenres(moodName: "2010s", colorR: 190, colorG: 120, colorB: 90)
        let m7 = MoodAndGenres(moodName: "Feel Good", colorR: 10, colorG: 20, colorB: 220)
        let m8 = MoodAndGenres(moodName: "Hip-Hop", colorR: 200, colorG: 5, colorB: 60)
        let m9 = MoodAndGenres(moodName: "Pop", colorR: 30, colorG: 220, colorB: 254)
       
        collection1List.append(s1)
        collection1List.append(s2)
        collection1List.append(s3)
        collection1List.append(s4)
        collection1List.append(s5)
        collection1List.append(s6)
        
        
        collection2List.append(ts1)
        collection2List.append(ts2)
        collection2List.append(ts3)
        collection2List.append(ts4)
        collection2List.append(ts5)
        collection2List.append(ts6)
        collection2List.append(ts7)
        collection2List.append(ts8)
        collection2List.append(ts9)
        collection2List.append(ts10)
        collection2List.append(ts11)
     
        
        
        collection3List.append(m1)
        collection3List.append(m2)
        collection3List.append(m3)
        collection3List.append(m4)
        collection3List.append(m5)
        collection3List.append(m6)
        collection3List.append(m7)
        collection3List.append(m8)
        collection3List.append(m9)
        
    }
}


