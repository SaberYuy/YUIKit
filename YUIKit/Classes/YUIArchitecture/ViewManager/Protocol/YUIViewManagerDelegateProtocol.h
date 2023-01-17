//
//  YUIViewManagerProtocol.h
//  YUIKit
//
//  Created by YUI on 2020/11/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol YUIViewManagerDelegateProtocol <NSObject>

@optional

/// 将viewManager中的信息通过代理传递给ViewModel
/// - Parameters:
///   - viewManager: 发送viewManager
///   - name: 调用消息名
///   - userInfo: 信息
- (void)receiveViewManager:(id)viewManager name:(NSString *)name userInfo:(NSDictionary *)userInfo;

@end

NS_ASSUME_NONNULL_END


