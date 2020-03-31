//
//  DeptViewController.swift
//  Smart Attendance System
//
//  Created by ARY@N on 31/03/20.
//  Copyright © 2020 Hitachi Payment Services. All rights reserved.
//

import UIKit

class DeptViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    let Dept: [String] = ["ECE", "CSE", "IT", "AEIE", "EE", "ME", "CIVIL"]
    let noOfItemsinARow : CGFloat = 2
    var cellGap : CGFloat = 10
    var sectionLRGap :CGFloat = 10
    var gapCalculation : CGFloat = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    
        collectionView.register(UINib(nibName: "DeptCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "DeptCollectionViewCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.reloadData()
    }
}
extension DeptViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Dept.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DeptCollectionViewCell", for: indexPath) as! DeptCollectionViewCell
        cell.label.text = Dept[indexPath.row]
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
        performSegue(withIdentifier: "SecVC", sender: self)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.size.width - gapCalculation)/noOfItemsinARow, height: (collectionView.frame.size.width - gapCalculation)/noOfItemsinARow)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return cellGap
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: sectionLRGap , left: sectionLRGap, bottom: sectionLRGap + 15, right: sectionLRGap)
    }
    
}
