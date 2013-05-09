//
//  jLeftViewController.h
//  jclock
//
//  Created by wangdu on 13-5-8.
//  Copyright (c) 2013年 wangdu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface jLeftViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{

    UITableView         *__leftTable;
    NSArray             *__leftArray;
}
@end
