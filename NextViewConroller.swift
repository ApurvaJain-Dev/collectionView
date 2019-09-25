//
//  NextViewConroller.swift
//  collectionView
//
//  Created by Student-001 on 29/08/19.
//  Copyright © 2019 apurva. All rights reserved.
//

import UIKit

class NextViewConroller: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    fileprivate let insets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    
    fileprivate let numberOfItemsPerRow = 2
    
var fotos = ["east.png","west.png","ball.png","south.png","north.png"]
    
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return fotos.count
}

    @IBOutlet var nextCollection: UICollectionView!
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! NextCollectionViewCell
    
        cell.nextImage.image = UIImage(named: fotos[indexPath.row])
    
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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
