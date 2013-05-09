//
//  jLeftViewController.m
//  jclock
//
//  Created by wangdu on 13-5-8.
//  Copyright (c) 2013年 wangdu. All rights reserved.
//

#import "jLeftViewController.h"
#import "jBase.h"
#import "AboutViewController.h"
#import "FlashLightViewController.h"
#import "SettingViewController.h"
#import "AppDelegate.h"
#import "DDMenuController.h"
@interface jLeftViewController ()
@property (nonatomic, retain)UITableView    *leftTable;
@property (nonatomic, retain)NSArray        *leftArray;
@end

@implementation jLeftViewController
@synthesize leftTable = __leftTable;
@synthesize leftArray = __leftArray;

-(void)dealloc{

    [__leftArray release];__leftArray = nil;
    [super dealloc];
}

#pragma mark -
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [self.view addSubview:self.leftTable];
    [__leftTable release];

}
#pragma mark - 控件
-(UITableView *)leftTable{
    int __t_x        = 0;
    int __t_y        = 0;
    int __t_width    = jclockWidth;
    int __t_height   = jclockHeight;
    CGRect __rect    = CGRectMake(__t_x, __t_y, __t_width, __t_height);
    if (!__leftTable) {
        __leftTable             = [[UITableView alloc] initWithFrame:__rect style:UITableViewStylePlain];
        __leftTable.backgroundColor = [UIColor clearColor];
        __leftTable.delegate    = self;
        __leftTable.dataSource  = self;
    }
    return __leftTable;
}
-(NSArray *)leftArray{

    if (!__leftArray) {
        __leftArray = @[@"手电筒",@"设置",@"关于"];
        [__leftArray retain];
    }
    return __leftArray;
}
#pragma mark - UITableViewDelegate UITableViewDatasource
-(float)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    return 44.f;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return [self.leftArray count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *cellIdentifier = @"cellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text = [self.leftArray objectAtIndex:indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    AppDelegate *app = (AppDelegate *)jApp;
    if (indexPath.row == 0) {
        FlashLightViewController *flash = [[FlashLightViewController alloc] init];
        UINavigationController   *navi  = [[UINavigationController alloc] initWithRootViewController:flash];
        navi.view.backgroundColor = [UIColor whiteColor];
        [flash release];
        [app.menu setRootController:navi animated:YES];
        [navi release];
    }
    else if(indexPath.row == 1){
        SettingViewController *flash = [[SettingViewController alloc] init];
        UINavigationController   *navi  = [[UINavigationController alloc] initWithRootViewController:flash];
        [flash release];
        [app.menu setRootController:navi animated:YES];
        [navi release];
    }
    else if(indexPath.row == 2){
        AboutViewController *flash = [[AboutViewController alloc] init];
        UINavigationController   *navi  = [[UINavigationController alloc] initWithRootViewController:flash];
        [flash release];
        [app.menu setRootController:navi animated:YES];
        [navi release];
    }
}
#pragma mark -
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
