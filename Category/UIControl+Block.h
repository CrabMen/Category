//
//  UIControl+Block.h
//  UIControlBlcokHandle
//
//  Created by CrabMan on 16/5/20.
//  Copyright © 2016年 CrabMan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIControl (Block)

- (void) handleControlEvent:(UIControlEvents)controlEvent withBlock:(void(^)())actionBlock;
@end
