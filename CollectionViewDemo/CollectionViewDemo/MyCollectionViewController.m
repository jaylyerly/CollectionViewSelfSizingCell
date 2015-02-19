//
//  MyCollectionViewController.m
//  CollectionViewDemo
//
//  Created by Jay Lyerly on 2/19/15.
//  Copyright (c) 2015 Oak City Labs. All rights reserved.
//

#import "MyCollectionViewController.h"
#import "MyCollectionViewCell.h"

@interface MyCollectionViewController ()

@property (nonatomic, strong) NSArray *data;

@end

@implementation MyCollectionViewController

static NSString * const reuseIdentifier = @"MyCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UICollectionViewFlowLayout *flow = (UICollectionViewFlowLayout *)self.collectionViewLayout;
    flow.estimatedItemSize = CGSizeMake(100.0f, 50.0f);
    
    NSString *lorem = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean pellentesque mi enim. Sed non nisi erat, eget porttitor nibh. Praesent fermentum congue risus ac ullamcorper. Fusce pellentesque sollicitudin euismod. Morbi sollicitudin pretium blandit. Morbi condimentum, lorem luctus porta tristique, elit arcu rhoncus sapien, non vestibulum turpis nisi vitae erat. Sed molestie mauris sit amet mauris vulputate ut interdum lorem faucibus. Vivamus posuere, elit non rhoncus lacinia, nunc purus luctus sapien, id fermentum nisi augue sit amet libero. Sed lorem ligula, dapibus eu hendrerit at, sagittis eu ante. Phasellus blandit augue at ante venenatis tristique. Maecenas sit amet tincidunt arcu. Vestibulum consequat lorem vel turpis cursus gravida eget rutrum massa. Praesent ut sollicitudin dui. Sed in quam aliquam massa sodales tincidunt eu id sem. ";
 
    self.data = [lorem componentsSeparatedByString:@" "];
    [self.collectionView reloadData];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.data count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MyCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    NSString *datum = self.data[indexPath.row];
    
    cell.myLabel.text = datum;
    cell.myLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];  // should be more dynamic

    return cell;
}

@end
