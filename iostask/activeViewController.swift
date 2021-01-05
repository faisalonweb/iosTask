//
//  activeViewController.swift
//  iostask
//
//  Created by macbook on 04/01/2021.
//

import UIKit

class activeViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
   
    @IBOutlet weak var internalView: UIView!
    @IBOutlet weak var externalView: UIView!
    @IBOutlet weak var intialprocessing: UILabel!
    
    @IBOutlet weak var bottomview: UIView!
    @IBOutlet weak var colview: UICollectionView!
    @IBOutlet weak var upprview: UIView!
    @IBOutlet weak var collectview: UICollectionView!
    
    
    let imageArr: [UIImage] = [
        UIImage(named: "unnamed")!,
        UIImage(named: "unnamed")!,
        UIImage(named: "unnamed")!,
        UIImage(named: "unnamed")!,
        UIImage(named: "unnamed")!,
        UIImage(named: "unnamed")!,
        UIImage(named: "unnamed")!,
        UIImage(named: "unnamed")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        internalView.layer.cornerRadius = 8
        internalView.layer.shadowColor =  UIColor(red:0/255, green:0/255, blue:0/255, alpha: 0.1).cgColor
        bottomview.layer.shadowOpacity =  100
        bottomview.layer.cornerRadius = 8
        bottomview.layer.shadowColor =  UIColor(red:0/255, green:0/255, blue:0/255, alpha: 0.1).cgColor
        internalView.layer.shadowOpacity =  100
        externalView.layer.cornerRadius = 24
        intialprocessing.layer.cornerRadius = 15
        intialprocessing.layer.masksToBounds = true
        //upprview.layer.cornerRadius = 20
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        collectview.collectionViewLayout = layout
        let layoutone = UICollectionViewFlowLayout()
        layoutone.scrollDirection = .horizontal
        colview.collectionViewLayout = layoutone
    
       
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectview {
            return imageArr.count // Replace with count of your data for collectionViewA
           }
        else if (collectionView == self.colview) {
            return imageArr.count
        }
       return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.collectview {
            let cell = collectview.dequeueReusableCell(withReuseIdentifier: "personcell", for: indexPath) as! PersonCell
            cell.personImages.layer.cornerRadius = 20
            cell.personImages.image = imageArr[indexPath.item]
            return cell
            
           }

        else if (collectionView == self.colview) {
            let cella = colview.dequeueReusableCell(withReuseIdentifier: "cello", for: indexPath) as! BranchCell
            cella.cellimg.layer.cornerRadius = 20
            cella.cellimg.image = imageArr[indexPath.item]
            return cella
            
           }
        return UICollectionViewCell()
    }

   
}
