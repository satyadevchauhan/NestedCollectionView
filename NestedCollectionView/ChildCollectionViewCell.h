//
//  ChildCollectionViewCell.h
//  NestedCollectionView
//
//  Created by Satyadev on 19/02/17.
//  Copyright © 2017 Satyadev Chauhan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChildCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *title;

@end
