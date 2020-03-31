//
//  SecViewController.swift
//  Smart Attendance System
//
//  Created by ARY@N on 31/03/20.
//  Copyright © 2020 Hitachi Payment Services. All rights reserved.
//

import UIKit

class SecViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    let Sec: [String] = ["1A","1B","2A","2B","3A","3B","4A","4B"]
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UINib(nibName: "SecCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SecCollectionViewCell")
    }
    
}
extension SecViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Sec.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SecCollectionViewCell", for: indexPath) as! SecCollectionViewCell
        cell.label.text = Sec[indexPath.row]
        cell.view.layer.cornerRadius = 10
        cell.layer.cornerRadius = 10
        cell.layer.borderWidth = 0.2
        cell.layer.shadowColor = UIColor.lightGray.cgColor
        cell.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        cell.layer.shadowRadius = 2.0
        cell.layer.shadowOpacity = 2.0
        cell.layer.masksToBounds = false
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "HomeVC", sender: self)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    
}
