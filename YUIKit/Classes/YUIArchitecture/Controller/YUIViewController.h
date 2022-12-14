//
//  YUIViewController.h
//  YUIAll
//
//  Created by YUI on 2020/11/17.
//

#import <UIKit/UIKit.h>

#import "YUIViewControllerProtocol.h"
#import "YUIViewProtocol.h"
#import "YUIModelManagerProtocol.h"
#import "YUIViewDelegateProtocol.h"
#import "YUIViewControllerDelegateProtocol.h"

/**
 架构类型

 - PatternTypeMVC:
 - PatternTypeMVP:
 - PatternTypeMVVM:
 */
typedef NS_ENUM(NSInteger, YUIArchitectureType) {
    
    YUIArchitectureTypeNone                 = 0,
    YUIArchitectureTypeMVC                  = 1,
    YUIArchitectureTypeMVP                  = 2,
    YUIArchitectureTypeMVVM                 = 3,
};

NS_ASSUME_NONNULL_BEGIN

@interface YUIViewController : UIViewController<YUIViewControllerProtocol, YUIViewProtocol, YUIModelManagerProtocol, YUIViewDelegateProtocol, YUIViewControllerDelegateProtocol>

@property (nonatomic, assign) BOOL isFirstAppear;

@property (nonatomic, strong) UIView <YUIViewProtocol> *mainView;
@property (nonatomic, strong) id<YUIModelManagerProtocol> modelManager;
@property (nullable, nonatomic, weak) id<YUIViewControllerDelegateProtocol> viewControllerDelegate;

+ (instancetype)sharedInstance;

- (void)configureArchitecture:( YUIArchitectureType )architectureType;

@end

NS_ASSUME_NONNULL_END
