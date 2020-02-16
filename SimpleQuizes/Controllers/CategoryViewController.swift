//
//  CategoryViewController.swift
//  SimpleQuizes
//
//  Created by Dionte Silmon on 2/15/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    
    @IBOutlet weak var categoryView: UICollectionView!
    
    let categories = ["Science Quiz", "Space Quiz", "Planet Quiz", "Dinosaur Quiz"]
    var layout : UICollectionViewFlowLayout!
    var row = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create the nib and register it to the collectionView
        let nib = UINib(nibName: "CategoryCollectionViewCell", bundle: nil)
        categoryView.register(nib, forCellWithReuseIdentifier: "categoryCell")
        
        setupNavBar()
        setupLayout()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.setHidesBackButton(true, animated: true)
    }
    
    private func setupNavBar() {
        
        navigationItem.title = "Categories"
        
        navigationItem.largeTitleDisplayMode = .always
        
        navigationController?.navigationBar.tintColor = .white
    }
    
    // MARK: - Collection View Flowlayout
    
    // Set up the layout of the cells
    private func setupLayout() {
        
        layout = UICollectionViewFlowLayout()
        
        let padding: CGFloat = 30
        
        let collectionViewSize = categoryView.frame.size.width - padding
        
        layout.itemSize = CGSize(width: collectionViewSize / 2, height: collectionViewSize / 2)
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 0, right: 10)
        layout.scrollDirection = .vertical
        
        categoryView.setCollectionViewLayout(layout, animated: true)
        
    }
    
    
    
}

//MARK: - CollectionView Delegate and DataSource Methods

extension CategoryViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! CategoryCollectionViewCell
        
        cell.designBorderBackground()
        
        cell.categoryLabel.text = categories[indexPath.row]
        
        return cell
        
    }
    
}
