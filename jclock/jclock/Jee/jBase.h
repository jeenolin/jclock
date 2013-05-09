//
//  jBase.h
//  jclock
//
//  Created by wangdu on 13-5-8.
//  Copyright (c) 2013年 wangdu. All rights reserved.
//

#ifndef jclock_jBase_h
#define jclock_jBase_h

#import "AppDelegate.h"

#define jApp (AppDelegate *)[UIApplication sharedApplication].delegate


//屏幕宽
#define jclockWidth    CGRectGetWidth([UIScreen mainScreen].bounds)
//屏幕高
#define jclockHeight   CGRectGetHeight([UIScreen mainScreen].bounds)
//navi 高
#define jclockNaviHeight           49
//tab  高
#define jclockTabHeight            44

#endif
