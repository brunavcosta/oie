//
//  ExploreTableViewCell.swift
//  view
//
//  Created by Bruna Costa on 31/03/20.
//  Copyright © 2020 Bruna Costa. All rights reserved.
//

import UIKit

class ExploreTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate{

    
    @IBOutlet var collectionView: UICollectionView!
    class var customCell : ExploreTableViewCell {
    let cell = Bundle.main.loadNibNamed("ExploreTableViewCell", owner: self, options: nil)?.last
    return cell as! ExploreTableViewCell
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        collectionView.reloadData()
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.imagemUm.image = UIImage(named: "consentimento")
        cell.nomeHist.text = "Consentimento"
        return cell
    }
    
    func collectionView (_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        return CGSize(width: 100, height: 90)
    }
    
    
}


