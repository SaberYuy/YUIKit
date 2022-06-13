//
//  YUIViewProtocol.h
//  YUIAll
//
//  Created by YUI on 16/3/5.
//  Copyright © 2016年 SaberYuy. All rights reserved.
//


#import <UIKit/UIKit.h>

@protocol YUIViewDelegateProtocol <NSObject>

@optional

/**
 *  将view中的事件通过代理传递出去
 *
 *  @param view   view自己
 *  @param event 所触发事件的一些描述信息
 */
- (void)view:(__kindof UIView *)view withEvent:(NSDictionary *)event;

@end

