//
//  ViewController.swift
//  YoutubeExplorePageDemo
//
//  Created by Que on 8.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var moreButton1: UIButton!
    @IBOutlet weak var collectionViewOne: UICollectionView!
   
    @IBOutlet weak var moreButton3: UIButton!
    @IBOutlet weak var collectionViewTwo: UICollectionView!
    
    
    @IBOutlet weak var collectionViewThree: UICollectionView!
    @IBOutlet weak var moreButton2: UIButton!
    var collection1List = [NewAlbumSongs1]()
    var collection2List = [TopSongs2]()
    var collection3List = [MoodAndGenres]()
    override func viewDidLoad() {
        tabBarController?.selectedIndex = 1
        collectionViewOne.delegate = self
        collectionViewOne.dataSource = self
        collectionViewTwo.delegate = self
        collectionViewTwo.dataSource = self
        collectionViewThree.delegate = self
        collectionViewThree.dataSource = self
        buttonDesign()
        dataPrepare()
        collectionViewOneDesign()
        collectionViewTwoDesign()
        collectionViewThreeDesign()
        super.viewDidLoad()
        
        
        
        moreButton1.layer.cornerRadius = 15
        moreButton1.layer.borderColor = UIColor.white.cgColor
        moreButton1.layer.borderWidth = 0.4
        
        
        
        
    }
    
    func buttonDesign(){
        moreButton1.layer.cornerRadius = 15
        moreButton1.layer.borderColor = UIColor.white.cgColor
        moreButton1.layer.borderWidth = 0.4
        
        moreButton2.layer.cornerRadius = 15
        moreButton2.layer.borderColor = UIColor.white.cgColor
        moreButton2.layer.borderWidth = 0.4
        moreButton3.layer.cornerRadius = 15
        moreButton3.layer.borderColor = UIColor.white.cgColor
        moreButton3.layer.borderWidth = 0.4
    }
    
    
    
    
    
    func dataPrepare(){
        let  s1 = NewAlbumSongs1(songName: "Dünyadan uzak", artistName: "Mor ve ötesi", photoName: "album1")
        let  s2 = NewAlbumSongs1(songName: "Cambaz", artistName: "Mor ve ötesi", photoName: "album2")
        let  s3 = NewAlbumSongs1(songName: " Nothing else matters", artistName: "Metallica", photoName: "album3")
        let  s4 = NewAlbumSongs1(songName: "Bir kadın çizeceksin", artistName: "Manga", photoName: "album4")
        let  s5 = NewAlbumSongs1(songName: "Kuzu kuzu", artistName: "Tarkan", photoName: "album5")
        let  s6 = NewAlbumSongs1(songName: "Master of puppets", artistName: "Metallica", photoName: "album3")
        
        
        
        let  ts1 = TopSongs2(songName: "Dünyadan uzak", artistName: "Mor ve ötesi", photoName: "album1",upOrDownImage: "upIcon")
        let  ts2 = TopSongs2(songName: "Cambaz", artistName: "Mor ve ötesi", photoName: "album2",upOrDownImage: "dotIcon")
        let  ts3 = TopSongs2(songName: " Nothing else matters", artistName: "Metallica", photoName: "album3",upOrDownImage: "downIcon")
        let  ts4 = TopSongs2(songName: "Bir kadın çizeceksin", artistName: "Manga", photoName: "album4",upOrDownImage: "downIcon")
        let  ts5 = TopSongs2(songName: "Kuzu kuzu", artistName: "Tarkan", photoName: "album5",upOrDownImage: "upIcon")
        let  ts6 = TopSongs2(songName: "Master of puppets", artistName: "Metallica", photoName: "album3",upOrDownImage: "upIcon")
        let  ts7 = TopSongs2(songName: "Dünyadan uzak", artistName: "Mor ve ötesi", photoName: "album1",upOrDownImage: "upIcon")
        let  ts8 = TopSongs2(songName: "Cambaz", artistName: "Mor ve ötesi", photoName: "album2",upOrDownImage: "dotIcon")
        let  ts9 = TopSongs2(songName: " Nothing else matters", artistName: "Metallica", photoName: "album3",upOrDownImage: "downIcon")
        let  ts10 = TopSongs2(songName: "Bir kadın çizeceksin", artistName: "Manga", photoName: "album4",upOrDownImage: "downIcon")
        let  ts11 = TopSongs2(songName: "Kuzu kuzu", artistName: "Tarkan", photoName: "album5",upOrDownImage: "upIcon")
        let  ts12 = TopSongs2(songName: "Master of puppets", artistName: "Metallica", photoName: "album3",upOrDownImage: "upIcon")
        
        
        let m1 = MoodAndGenres(moodName: "Energy", colorR: 183, colorG: 137, colorB: 248)
        let m2 = MoodAndGenres(moodName: "Energy1", colorR: 140, colorG: 150, colorB: 160)
        let m3 = MoodAndGenres(moodName: "Energy1", colorR: 195, colorG: 40, colorB: 28)
        let m4 = MoodAndGenres(moodName: "Energy", colorR: 252, colorG: 236, colorB: 154)
        let m5 = MoodAndGenres(moodName: "Energy1", colorR: 40, colorG: 50, colorB: 160)
        let m6 = MoodAndGenres(moodName: "Energy1", colorR: 190, colorG: 120, colorB: 90)
        let m7 = MoodAndGenres(moodName: "Energy", colorR: 10, colorG: 20, colorB: 220)
        let m8 = MoodAndGenres(moodName: "Energy1", colorR: 200, colorG: 5, colorB: 60)
        let m9 = MoodAndGenres(moodName: "Energy1", colorR: 30, colorG: 220, colorB: 254)
       
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
        collection2List.append(ts12)
        
        
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






extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionViewOne{
            return collection1List.count
        }else if collectionView == self.collectionViewTwo {
            return collection2List.count}
        else{
            return collection3List.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionViewOne{
            
            
            let song = collection1List[indexPath.row]
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellOne", for: indexPath) as! CellOne
            cell.labelSongName.text = song.songName!
            cell.labelArtistName.text = song.artistName!
            cell.photo.image = UIImage(named: song.photoName!)
          
            
            return cell}
        
        else if collectionView == self.collectionViewTwo{
            let song = collection2List[indexPath.row]
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellTwo", for: indexPath) as! CellTwo
            cell.labelSongName.text = song.songName!
            cell.labelArtistName.text = song.artistName!
            cell.photo2.image = UIImage(named: song.photoName!)
            cell.labelLevel.text = String(indexPath.row+1)
            cell.upOrDownImage.image = UIImage(named: song.upOrDownImage!)
            
            
            return cell
            
            
            
        }
        else{
            let mood = collection3List[indexPath.row]
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellThree", for: indexPath) as! CellThree
            cell.labelMood.text = mood.moodName
            cell.colorView.backgroundColor = UIColor(red:CGFloat(mood.colorR!/255), green: CGFloat(mood.colorG!/255), blue: CGFloat(mood.colorB!/255), alpha: 1)
            
            
            return cell
            
        }
        
        
    
            
    }
    
    func collectionViewOneDesign(){
        
        let tasarim = UICollectionViewFlowLayout()
         tasarim.scrollDirection = .horizontal
         tasarim.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
         tasarim.minimumInteritemSpacing = 0 // yatay
         tasarim.minimumLineSpacing = 10 // dikey
        
         let hucreGenisligi = (collectionViewOne.bounds.width-40)/2

         let hucreUzunlugu = collectionViewOne.bounds.height
        
        
         tasarim.itemSize = CGSize(width: hucreGenisligi, height: hucreUzunlugu)
         collectionViewOne.collectionViewLayout = tasarim
        
    }
    func collectionViewTwoDesign(){
        let tasarim = UICollectionViewFlowLayout()
        tasarim.scrollDirection = .horizontal
        tasarim.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        tasarim.minimumInteritemSpacing = 10 // yatay
        tasarim.minimumLineSpacing = 0 // dikey
       
        let hucreGenisligi = collectionViewTwo.bounds.width

        let hucreUzunlugu = (collectionViewTwo.bounds.height-30)/4
       
        tasarim.itemSize = CGSize(width: hucreGenisligi, height: hucreUzunlugu)

         collectionViewTwo.collectionViewLayout = tasarim
        
    }
    
    func collectionViewThreeDesign(){
        let tasarim = UICollectionViewFlowLayout()
        tasarim.scrollDirection = .horizontal
        tasarim.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        tasarim.minimumInteritemSpacing = 15 // yatay
        tasarim.minimumLineSpacing = 20 // dikey
       
        let hucreGenisligi = (collectionViewThree.bounds.width-20)/2

        let hucreUzunlugu = (collectionViewThree.bounds.height-30)/3
       
        tasarim.itemSize = CGSize(width: hucreGenisligi, height: hucreUzunlugu)

         collectionViewThree.collectionViewLayout = tasarim
        
    }
    
    
}
