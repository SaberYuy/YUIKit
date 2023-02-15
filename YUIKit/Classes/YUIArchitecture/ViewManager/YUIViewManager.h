//
//  YUIViewManager.h
//  YUIKit
//
//  Created by YUI on 2021/2/21.
//

#import <Foundation/Foundation.h>

#import "YUIViewManagerProtocol.h"
#import "YUIViewDelegateProtocol.h"
#import "YUIViewModelDelegateProtocol.h"
#import "YUIViewProtocol.h"
#import "YUIViewManagerDelegateProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface YUIViewManager : NSObject <YUIViewManagerProtocol, YUIViewDelegateProtocol, YUIViewModelDelegateProtocol>

@property (nonatomic, weak) UIView *managementView;

@property (nonatomic, weak) UIViewController *viewController;

@property (nullable, nonatomic, weak) id<YUIViewManagerDelegateProtocol> viewManagerDelegate;

/**
 *  viewManagerInfo
 */
@property (nonatomic, copy) NSDictionary *viewManagerInfo;

@end

NS_ASSUME_NONNULL_END
