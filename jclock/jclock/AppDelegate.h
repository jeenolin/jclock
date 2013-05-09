//
//  AppDelegate.h
//  jclock
//
//  Created by wangdu on 13-5-8.
//  Copyright (c) 2013年 wangdu. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DDMenuController;
@class jLeftViewController;
@class jRightViewController;
@class jHomeViewController;
@interface AppDelegate : UIResponder <UIApplicationDelegate>{

    DDMenuController          *__menu;
    jLeftViewController       *__left;
    jRightViewController      *__right;
}

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain)DDMenuController *menu;

@end
