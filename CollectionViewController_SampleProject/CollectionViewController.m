//
//  CollectionViewController.m
//  CollectionViewController_SampleProject
//
//  Created by Song, Tianyi | RASIA on 15/4/20.
//  Copyright © 2020 Song, Tianyi | RASIA. All rights reserved.
//

#import "CollectionViewController.h"
#import "CollectionViewCell.h"
#import "CollectionReusableView.h"

@interface CollectionViewController ()
{
    NSArray *devices;
    NSArray *headers;
    NSArray *footers;
}

@end

@implementation CollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    devices = @[@[@"iPhone",@"iPad",@"iPod Touch",@"iMac",@"iWatch",@"iTV"],
  @[@"sky", @"night"]];
    headers = @[@"Apple Products",@"Something Else"];
    footers = @[@"If you are interested, go to the website and buy one.",@"Nothing Else. Thank you."];
    
    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
//#warning Incomplete implementation, return the number of sections
    return devices.count;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of items
    return [[devices objectAtIndex:section] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    cell.deviceImages.image = [UIImage imageNamed:devices[indexPath.section][indexPath.item]];
    
    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    CollectionReusableView *header = nil;
    if (kind == UICollectionElementKindSectionHeader) {
        CollectionReusableView *header = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"sectionHeader" forIndexPath:indexPath];
        //header.headerLabel.text = @"Apple Products";
        header.headerLabel.text = (NSString *)[headers objectAtIndex:indexPath.section];
        return header;
    }
    if (kind == UICollectionElementKindSectionFooter) {
        CollectionReusableView *footer = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"sectionFooter" forIndexPath:indexPath];
        //footer.footerLabel.text = @"If you are interested, go to the website and buy one.";
        footer.footerLabel.text = (NSString *)[footers objectAtIndex:indexPath.section];
        return footer;
    }
    return header;
}


#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
