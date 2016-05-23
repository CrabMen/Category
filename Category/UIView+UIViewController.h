//
//  UIView+UIViewController.h
//  ViewJumpToController
//
//  Created by CrabMan on 16/5/18.
//  Copyright © 2016年 CrabMan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (UIViewController)

@property (nonatomic,strong) UINavigationController *navigationController;

- (UIViewController *)viewController ;
@end
