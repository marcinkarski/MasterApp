//
//  GridController.swift
//  MasterApp
//
//  Created by Marcin Karski on 19/03/2017.
//  Copyright © 2017 Marcin Karski. All rights reserved.
//

import UIKit

class GridController: UIViewController {

    let identifier = "cell"
    
    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionView()
    }
    
    func setupCollectionView() {
        let layout = UICollectionViewFlowLayout()
        collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: identifier)
        collectionView.backgroundColor = .gray
        
        view.addSubview(collectionView)
    }
}

extension GridController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath)
        cell.backgroundColor = .blue
        return cell
    }
}
