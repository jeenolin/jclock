//
//  jBaseViewController.m
//  jclock
//
//  Created by wangdu on 13-5-8.
//  Copyright (c) 2013年 wangdu. All rights reserved.
//

#import "jBaseViewController.h"
#import "jBase.h"
#import "AppDelegate.h"
#import "DDMenuController.h"
@interface jBaseViewController ()

@end

@implementation jBaseViewController
@synthesize naviGationBar = __naviGationBar;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
#pragma mark - 控件
- (void)showShadow:(BOOL)val {
    
    __naviGationBar.layer.shadowOpacity = val ? 0.8f : 0.0f;
    if (val) {
        __naviGationBar.layer.cornerRadius = 4.0f;
        __naviGationBar.layer.shadowOffset = CGSizeZero;
        __naviGationBar.layer.shadowRadius = 4.0f;
        
        __naviGationBar.layer.shouldRasterize = YES;
        __naviGationBar.layer.rasterizationScale = [UIScreen mainScreen].scale;
        
        __naviGationBar.layer.shadowPath = [UIBezierPath bezierPathWithRect:__naviGationBar.bounds].CGPath;
    }
    
}
-(UIView *)naviGationBar{

    if (!__naviGationBar) {
        int _n_x = 0;
        int _n_y = 0;
        int _n_w = jclockWidth;
        int _n_h = jclockNaviHeight;
        CGRect _n_R = CGRectMake(_n_x, _n_y, _n_w, _n_h);
        __naviGationBar  = [[UIView alloc] initWithFrame:_n_R];
        __naviGationBar.backgroundColor = [UIColor grayColor];
        
        
        UIButton  *_backButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _backButton.frame      = CGRectMake(20, 0, 60, CGRectGetHeight(_n_R));
        [_backButton addTarget:self action:@selector(popViewController:) forControlEvents:UIControlEventTouchUpInside];
        [_backButton setTitle:@"返回" forState:UIControlStateNormal];
        [__naviGationBar addSubview:_backButton];
    }
    [self showShadow:YES];
    return __naviGationBar;
}

#pragma mark -
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.navigationController.navigationBar.hidden = YES;
    self.view.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.naviGationBar];
    [__naviGationBar release];
    
    
}
#pragma mark -

-(void)popViewController:(UIButton *)button{
    AppDelegate *app = (AppDelegate *)jApp;
    [app.menu showLeftController:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
