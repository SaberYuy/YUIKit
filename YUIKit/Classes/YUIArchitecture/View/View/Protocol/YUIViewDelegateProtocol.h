//
//  YUIViewProtocol.h
//  YUIKit
//
//  Created by YUI on 16/3/5.
//  Copyright © 2016年 SaberYuy. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol YUIViewDelegateProtocol <NSObject>

@optional

/// 将view中的事件通过代理传递出去
/// - Parameters:
///   - view: 发送view
///   - name: 调用消息名
///   - event: 事件
- (void)receiveView:(UIView *)view name:(NSString *)name event:(NSDictionary *)event;

@end

NS_ASSUME_NONNULL_END


