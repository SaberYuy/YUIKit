//
//  YUIViewModelProtocol.h
//  YUIKit
//
//  Created by YUI on 2021/2/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol YUIViewModelDelegateProtocol <NSObject>

@optional

/// 将viewmodel中的信息通过代理传递给ViewManager
/// - Parameters:
///   - viewModel: 发送viewmodel
///   - name: 调用消息名
///   - info: 信息
- (void)receiveViewModel:(id)viewModel name:(NSString *)name userInfo:(NSDictionary *)userInfo;

@end

NS_ASSUME_NONNULL_END


