//
//  YUIViewModelSubclassingHooksProtocol.h
//  YUIKit
//
//  Created by YUI on 2021/3/23.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#import "YUIModelManagerProtocol.h"

NS_ASSUME_NONNULL_BEGIN

/**
 *  请求成功block
 */
typedef void (^successBlock)(id responseObject);
/**
 *  请求失败block
 */
typedef void (^failureBlock) (NSError *error);
/**
 *  请求响应block
 */
typedef void (^responseBlock)(id responseObject, NSError *error);
/**
 *  监听进度响应block
 */
typedef void (^progressBlock)(NSProgress * progress);

@protocol YUIViewModelProtocol <YUIModelManagerProtocol>

@optional

-(void)loadData:(nullable progressBlock)progress success:(nullable successBlock)success failure:(nullable failureBlock)failure;

@end

NS_ASSUME_NONNULL_END
