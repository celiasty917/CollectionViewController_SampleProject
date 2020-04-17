//
//  CollectionReusableView.h
//  CollectionViewController_SampleProject
//
//  Created by Song, Tianyi | RASIA on 16/4/20.
//  Copyright © 2020 Song, Tianyi | RASIA. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CollectionReusableView : UICollectionReusableView
@property (weak, nonatomic) IBOutlet UILabel *headerLabel;
@property (weak, nonatomic) IBOutlet UILabel *footerLabel;

@end

NS_ASSUME_NONNULL_END
