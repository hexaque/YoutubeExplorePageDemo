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
   
    @IBOutlet weak var moreButton2: UIButton!
    var collection1List = [NewAlbumSongs1]()
    override func viewDidLoad() {
        tabBarController?.selectedIndex = 1
        collectionViewOne.delegate = self
        collectionViewOne.dataSource = self
        buttonDesign()
        dataPrepare()
        topMoodDesign()
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
        collection1List.append(s1)
        collection1List.append(s2)
        collection1List.append(s3)
        collection1List.append(s4)
        collection1List.append(s5)
        collection1List.append(s6)
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return collection1List.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let song = collection1List[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellOne", for: indexPath) as! CellOne
        cell.labelSongName.text = song.songName!
        cell.labelArtistName.text = song.artistName!
        cell.photo.image = UIImage(named: song.photoName!)
            
                
        return cell
        
        
    
            
    }
    func topMoodDesign(){
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
    
    
    
}
