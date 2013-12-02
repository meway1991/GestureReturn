//
//  MWRootViewController.h
//  PopTest
//
//  Created by meway on 13-11-29.
//  Copyright (c) 2013年 孟伟. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FlipBoardNavigationController.h"

@interface MWRootViewController : UIViewController

@property (nonatomic,strong) NSString *mTitle;

- (void)initBackBtn;

- (void)addRightBtnWithTitle:(NSString *)title;

//- (void)addRightBtnWithImage:( *)image HilightImage:(NSString *)hilightImage;

- (void)rightBtnClcik:(UIButton *)sender;

@end
