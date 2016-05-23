//
//  UIControl+Block.m
//  UIControlBlcokHandle
//
//  Created by CrabMan on 16/5/20.
//  Copyright © 2016年 CrabMan. All rights reserved.
//

#import "UIControl+Block.h"

//runtime的头文件
#import <objc/message.h>
static char controlEventKey;

@implementation UIControl (Block)

-(void)handleControlEvent:(UIControlEvents)controlEvent withBlock:(void (^)())actionBlock {

    [self addTarget:self action:@selector(callActionBlock:) forControlEvents:controlEvent];
    
    objc_setAssociatedObject(self, &controlEventKey, actionBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void)callActionBlock:(id)sender {
    void (^block)() =  objc_getAssociatedObject(self, &controlEventKey);
    if (block)  block();
    
}
@end
