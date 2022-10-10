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
        prepareStar()
        super.viewDidLoad()
        
    
        
        
        
        
    }
    
    func prepareStar(){
        delegateAndDataSource()
        buttonDesign()
        dataPrepare()
        collectionViewOneDesign()
        collectionViewTwoDesign()
        collectionViewThreeDesign()
    }
    
    func delegateAndDataSource(){
        collectionViewOne.delegate = self
        collectionViewOne.dataSource = self
        collectionViewTwo.delegate = self
        collectionViewTwo.dataSource = self
        collectionViewThree.delegate = self
        collectionViewThree.dataSource = self
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


