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
   
    @IBOutlet weak var collectionViewTwo: UICollectionView!
    @IBOutlet weak var moreButton2: UIButton!
    var collection1List = [NewAlbumSongs1]()
    var collection2List = [TopSongs2]()
    override func viewDidLoad() {
        tabBarController?.selectedIndex = 1
        collectionViewOne.delegate = self
        collectionViewOne.dataSource = self
        collectionViewTwo.delegate = self
        collectionViewTwo.dataSource = self
        buttonDesign()
        dataPrepare()
        collectionViewOneDesign()
        collectionViewTwoDesign()
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
        
    }
}






extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionViewOne{
            return collection1List.count
        }else{
            return collection2List.count}
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionViewOne{
            
            
            let song = collection1List[indexPath.row]
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellOne", for: indexPath) as! CellOne
            cell.labelSongName.text = song.songName!
            cell.labelArtistName.text = song.artistName!
            cell.photo.image = UIImage(named: song.photoName!)
            
            
            return cell}
        
        else{
            let song = collection2List[indexPath.row]
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellTwo", for: indexPath) as! CellTwo
            cell.labelSongName.text = song.songName!
            cell.labelArtistName.text = song.artistName!
            cell.photo2.image = UIImage(named: song.photoName!)
            cell.labelLevel.text = String(indexPath.row+1)
            cell.upOrDownImage.image = UIImage(named: song.upOrDownImage!)
            
            
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
       
        tasarim.itemSize = CGSize(width: hucreGenisligi-20, height: hucreUzunlugu)

         collectionViewTwo.collectionViewLayout = tasarim
        
    }
    
    
}
