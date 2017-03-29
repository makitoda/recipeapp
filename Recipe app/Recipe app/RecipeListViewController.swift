//
//  RecipeListViewController.swift
//  Recipe app
//
//  Created by Maki & Mai on 2017-03-27.
//  Copyright © 2017 Maki & Mai. All rights reserved.
//

import Foundation

class RecipeListViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        if self.revealViewController() != nil {
            
            // Open sidebar from menuButton
            menuButton.target = self.revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            
            // Open sidebar by swiping screen
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
            // Close sidebar by clicking main screen
            self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecipeListCollectionViewCell", for: indexPath) as! RecipeListCollectionViewCell
        
        cell.recipeName.text = "Recipe name" // TODO: Set dynamic data
        cell.recipeName.textColor = UIColor.white
        cell.recipeImageView.image = UIImage(named: "meal") // TODO: Set dynamic data
//        cell.recipeImageView.contentMode = .scaleAspectFill // Keep aspect of image
//        cell.recipeImageView.clipsToBounds = true // Clip image
//        cell.backgroundColor = UIColor.blue
        return cell
        
    }
    
    // Define size of cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / 2
        return CGSize(width: width, height: width)
    }
    
    // Define vertical space between cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    // Define horizontal space between cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
