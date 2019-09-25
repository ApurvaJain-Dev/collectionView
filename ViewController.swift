//
//  ViewController.swift
//  collectionView
//
//  Created by Student-001 on 29/08/19.
//  Copyright © 2019 apurva. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBAction func buttonPtressed(_ sender: UIButton) {
        
        let buttonForward = storyboard?.instantiateViewController(withIdentifier: "NextViewConroller") as! NextViewConroller
        
        navigationController?.pushViewController(buttonForward, animated: true)
        
    }
    
    
    @IBOutlet var nameCollection: UICollectionView!
    
     fileprivate let insets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    
    fileprivate let numberOfItemsPerRow = 4
    var numberArray = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      
        return numberArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.nameLabel.text = String(numberArray[indexPath.row])
        
        return cell
    }
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
return insets
        
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
       return insets.left
    
   }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
       // let totalWidth = collectionView.bounds.width
        let totalEmptyspace = insets.left  + insets.right + insets.left*CGFloat(numberOfItemsPerRow - 1)
        let tottalWidth = collectionView.bounds.width - totalEmptyspace
        let width = tottalWidth / CGFloat(numberOfItemsPerRow)
        
        return CGSize(width: width, height: width)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

