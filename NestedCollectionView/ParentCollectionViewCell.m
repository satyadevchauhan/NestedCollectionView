//
//  ParentCollectionViewCell.m
//  NestedCollectionView
//
//  Created by Satyadev on 19/02/17.
//  Copyright © 2017 Satyadev Chauhan. All rights reserved.
//

#import "ParentCollectionViewCell.h"
#import "ChildCollectionViewCell.h"

static NSString * const ChildCollectionViewCellIdentifier = @"ChildCollectionViewCellIdentifier";

@interface ParentCollectionViewCell()<UICollectionViewDelegate, UICollectionViewDataSource>

@end

@implementation ParentCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    [self initialiseView];
}

-(void) initialiseView {
    
    // Set up view
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    
    [self.collectionView registerNib:[UINib nibWithNibName:@"ChildCollectionViewCell" bundle:nil]forCellWithReuseIdentifier:ChildCollectionViewCellIdentifier];
}

#pragma mark - UICollectionViewDataSource

// Set the number of item rows
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 10;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    ChildCollectionViewCell *collectionCell = [collectionView dequeueReusableCellWithReuseIdentifier:ChildCollectionViewCellIdentifier forIndexPath:indexPath];
    return collectionCell;
}

// Set the number of sections
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

// Set width and height for Cell
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(100, 100);
}

@end
