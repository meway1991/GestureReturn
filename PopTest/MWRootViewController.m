//
//  MWRootViewController.m
//  PopTest
//
//  Created by meway on 13-11-29.
//  Copyright (c) 2013年 孟伟. All rights reserved.
//

#import "MWRootViewController.h"

#define BTN__WIDTH 40.f
#define Btn_Height 34.0f
#define Btn_Gap 5.0f

#define TITLE_HEIGHT 21.f
#define TITLE_WIDTH 200.f

#define BTN_FONT_SIZE 12

#define BACK_TITLE @"返回"

#define NAV_BG_IMG @"tit_bg"

#define NAV_LEFT_N_IMG @"goback"

#define NAV_RIGHT_N_IMG @"enter_gs"

#define NAV_RIGHT_LIST_N_IMG @"tan_san"
#define NAV_RIGHT_LIST_H_IMG @"tan_san_"

@interface MWRootViewController ()
{
    UIView *_barView;
    UILabel *_titleLabel;
}
@end

@implementation MWRootViewController

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
    [self initNavBar];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)initNavBar
{
    _barView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, MainWidth, NAV_HEIGHT)];
    _barView.backgroundColor = [UIColor redColor];
    [self.view addSubview:_barView];
    
    _titleLabel = [UILabel initWithFrame:CGRectMake((MainWidth-TITLE_WIDTH)/2, (NAV_HEIGHT-TITLE_HEIGHT)/2, TITLE_WIDTH, TITLE_HEIGHT) Font:MWFont(18.f) TextColor:[UIColor blueColor] Alignment:NSTextAlignmentCenter Lines:1];
    [_barView addSubview:_titleLabel];
    
//    [self initBackBtn];
}

- (void)setMTitle:(NSString *)mTitle
{
    _mTitle = mTitle;
    _titleLabel.text = mTitle;
}

#pragma mark - new Bar
- (void)initBackBtn
{
    DLog(@"sss = %d",[MWTools getAppDelegate].nav.viewControllers.count);
//    if ([MWTools getAppDelegate].nav.viewControllers.count <= 1) return;
    UIButton *backBtn = [UIButton initWithImage:MWImageMake(NAV_LEFT_N_IMG, NAV_LEFT_N_IMG) Frame:CGRectMake(Btn_Gap, Btn_Gap, BTN__WIDTH, Btn_Height)];

    [backBtn addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    [_barView addSubview:backBtn];
}

- (void)goBack
{
    if ([MWTools getAppDelegate].nav.viewControllers.count <= 1) {
        return;
    }
    [self.flipboardNavigationController popViewController];
}

- (void)addRightBtnWithTitle:(NSString *)title
{
    UIButton *btn = [UIButton initWithTitle:title Frame:CGRectMake(MainWidth-Btn_Gap-BTN__WIDTH, Btn_Gap, BTN__WIDTH, Btn_Height) Font:MWFont(BTN_FONT_SIZE) bgImage:MWImageMake(NAV_RIGHT_N_IMG, NAV_RIGHT_N_IMG)];

    [btn addTarget:self action:@selector(rightBtnClcik:) forControlEvents:UIControlEventTouchUpInside];
    
    [_barView addSubview:btn];
}

//- (void)addRightBtnWithImage:(NSString *)image HilightImage:(NSString *)hilightImage
//{
//    UIButton *rightBtn =[UIButton buttonWithType:UIButtonTypeCustom];
//    [rightBtn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
//    
//    if (hilightImage)
//    {
//        [rightBtn setImage:[UIImage imageNamed:hilightImage] forState:UIControlStateHighlighted];
//    }
//    
//    [rightBtn addTarget:self action:@selector(rightBtnClcik:) forControlEvents:UIControlEventTouchUpInside];
//    
//    rightBtn.frame = CGRectMake(0, 0, [UIImage imageNamed:image].size.width, Right_Btn_Height);
//    
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightBtn];
//}

- (void)rightBtnClcik:(UIButton *)sender
{
}


@end
