//
//  YUIViewModel.h
//  YUIKit
//
//  Created by YUI on 2021/2/21.
//

#import <Foundation/Foundation.h>

#import "YUIViewModelProtocol.h"
#import "YUIViewManagerDelegateProtocol.h"
#import "YUIViewDelegateProtocol.h"
#import "YUIViewControllerDelegateProtocol.h"
#import "YUIViewModelDelegateProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface YUIViewModel : NSObject<YUIViewModelProtocol, YUIViewControllerDelegateProtocol, YUIViewManagerDelegateProtocol>

@property (nullable, nonatomic, weak) id<YUIViewModelDelegateProtocol> viewModelDelegate;

@end

NS_ASSUME_NONNULL_END
