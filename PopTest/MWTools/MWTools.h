//
//  MWTools.h
//  MWTools
//
//  Created by meway on 13-11-21.
//  Copyright (c) 2013年 孟伟. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MWAppDelegate.h"
#import "MWStruct.h"

#define DEFAULT_HIDE_DELAY 1.0
#define LOAD_DEFAULT_TITLE @"请稍候..."

#define Default_Flash_Title @"没有数据"
#define Net_Error_Text @"当前设备的网络状况不正常"
#define Data_All_Load_Text @"已加载全部数据"

@interface MWTools : NSObject

#pragma mark - AlertView
+ (void)MsgBox:(NSString *)msg;

#pragma mark - 获取UIWindow AppDelegate
+ (MWAppDelegate *)getAppDelegate;
+ (UIWindow *)getAppWindow;

#pragma mark - FlashMessage
+ (void)flashMessage:(NSString *)message inView:(UIView *)view;

#pragma mark - 画直线
+ (void)drawLine:(float)lineWidth context:(CGContextRef)context moveToPoint:(CGPoint)moveCoor addLineToPoint:(CGPoint)addCoor rgb:(MWRGBColor)rgb;

#pragma mark - CheckNetWork
+ (BOOL)isNetWorkAvailable;

@end
