//
//  MWHomeViewController.m
//  PopTest
//
//  Created by meway on 13-11-29.
//  Copyright (c) 2013年 孟伟. All rights reserved.
//

#import "MWHomeViewController.h"

@interface MWHomeViewController ()

@end

@implementation MWHomeViewController

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
	self.mTitle = @"TEST";
    
    [self initBackBtn];
    [self addRightBtnWithTitle:@"PUSH"];
    
    self.view.backgroundColor = [UIColor grayColor];
}

- (void)rightBtnClcik:(UIButton *)sender
{
    MWHomeViewController *vc = [[MWHomeViewController alloc]init];
    [self.flipboardNavigationController pushViewController:vc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    DLog(@"xxx = %d",[MWTools getAppDelegate].nav.viewControllers.count);
}

@end
