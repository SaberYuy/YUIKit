//
//  YUIViewManagerSubclassingHooksProtocol.h
//  YUIKit
//
//  Created by YUI on 2021/3/23.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^ViewEventBlock)(void);

/**
 *  将自己的信息返回给ViewModel的block
 */
typedef void (^ViewModelInfoBlock)(void);

/**
 *  将自己的信息返回给ViewManager的block
 */
typedef void (^ViewManagerInfoBlock)(void);


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
