//
//  AppDelegate.h
//  CollectionViewController_SampleProject
//
//  Created by Song, Tianyi | RASIA on 15/4/20.
//  Copyright © 2020 Song, Tianyi | RASIA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

