//
//  jHomeViewController.h
//  jclock
//
//  Created by wangdu on 13-5-8.
//  Copyright (c) 2013年 wangdu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "jBaseViewController.h"

@class MGScrollView, PhotoBox;

@interface jHomeViewController : jBaseViewController

@property (nonatomic, retain) IBOutlet MGScrollView *scroller;

- (PhotoBox *)photoAddBox;
- (BOOL)allPhotosLoaded;

@end