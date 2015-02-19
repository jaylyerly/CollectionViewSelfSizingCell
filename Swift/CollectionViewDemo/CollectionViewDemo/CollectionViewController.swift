//
//  CollectionViewController.swift
//  CollectionViewDemo
//
//  Created by Jay Lyerly on 2/19/15.
//  Copyright (c) 2015 Oak City Labs. All rights reserved.
//

import UIKit

let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {

    var data:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        if let flow = self.collectionViewLayout as? UICollectionViewFlowLayout {
            flow.estimatedItemSize = CGSizeMake(100, 100)
        }
        
        // Do any additional setup after loading the view.
        let lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean pellentesque mi enim. Sed non nisi erat, eget porttitor nibh. Praesent fermentum congue risus ac ullamcorper. Fusce pellentesque sollicitudin euismod. Morbi sollicitudin pretium blandit. Morbi condimentum, lorem luctus porta tristique, elit arcu rhoncus sapien, non vestibulum turpis nisi vitae erat. Sed molestie mauris sit amet mauris vulputate ut interdum lorem faucibus. Vivamus posuere, elit non rhoncus lacinia, nunc purus luctus sapien, id fermentum nisi augue sit amet libero. Sed lorem ligula, dapibus eu hendrerit at, sagittis eu ante. Phasellus blandit augue at ante venenatis tristique. Maecenas sit amet tincidunt arcu. Vestibulum consequat lorem vel turpis cursus gravida eget rutrum massa. Praesent ut sollicitudin dui. Sed in quam aliquam massa sodales tincidunt eu id sem. "
        self.data = lorem.componentsSeparatedByString(" ")
        self.collectionView?.reloadData()
    }


    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.data.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! CollectionViewCell
    
        let word = self.data[indexPath.row]
        cell.label.text = word
        cell.label.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)

        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
