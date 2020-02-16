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
    
    let categories = ["Science Quizz", "Space Quizz", "Planet Quizz", "Dinosaur Quiz"]
    var layout : UICollectionViewFlowLayout!
    var row = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let nib = UINib(nibName: "CategoryCollectionViewCell", bundle: nil)
        categoryView.register(nib, forCellWithReuseIdentifier: "categoryCell")
        
        setupNavBar()
        
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
    
    private func setupLayout() {
        
    }
    
    
    
}

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
