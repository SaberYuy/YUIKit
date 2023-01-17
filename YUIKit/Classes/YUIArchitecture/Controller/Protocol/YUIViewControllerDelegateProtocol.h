//
//  YUIViewControllerDelegateProtocol.h
//  YUIKit
//
//  Created by YUI on 2021/4/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol YUIViewControllerDelegateProtocol <NSObject>

@optional

/// 将viewController中的信息通过代理传递给viewController
/// - Parameters:
///   - viewController: 发送viewController
///   - name: 调用消息名
///   - userInfo: 信息
- (void)receiveViewController:(__kindof UIViewController *)viewController name:(NSString *)name userInfo:(NSDictionary *)userInfo;

@end

NS_ASSUME_NONNULL_END

