//
//  UIView+YUIEvent.h
//  SUIMVVMDemo
//
//  Created by yuantao on 16/3/5.
//  Copyright © 2016年 lovemo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YUIViewDelegateProtocol.h"
#import "YUIViewManagerDelegateProtocol.h"

NS_ASSUME_NONNULL_BEGIN

typedef void (^ViewEventBlock)( void);

@interface UIView (YUIEvent)

/**
 获取当前 view 所在的 UIViewController，会递归查找 superview，因此注意使用场景不要有过于频繁的调用
 */
//@property(nullable, nonatomic, weak) __kindof UIViewController *viewController;

/**
 *  viewDelegate 传递事件
 */
@property (nullable, nonatomic, weak) id<YUIViewDelegateProtocol> viewDelegate;

/**
 *  block 传递事件
 */
@property (nonatomic, copy) ViewEventBlock viewEventBlock;

/**
 *  将view中的事件交由viewManager处理
 */
- (void)viewWithViewManager:(id<YUIViewDelegateProtocol>)viewManager;

@end

NS_ASSUME_NONNULL_END

