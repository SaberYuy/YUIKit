//
//  YUIViewManagerSubclassingHooksProtocol.h
//  YUIKit
//
//  Created by YUI on 2021/3/23.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol YUIViewManagerProtocol <NSObject>

@optional

#pragma mark -- init

- (void)didInitialize;

/**
 *  返回viewManager所管理的视图
 *
 *  @return viewManager所管理的视图
 */
- (__kindof UIView *)managementViewOfManager;

@end

NS_ASSUME_NONNULL_END
