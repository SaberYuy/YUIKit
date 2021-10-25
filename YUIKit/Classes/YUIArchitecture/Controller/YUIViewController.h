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
typedef NS_ENUM(NSInteger, ArchitectureType){
    
    ArchitectureTypeNone                 = 0,
    ArchitectureTypeMVC                  = 1,
    ArchitectureTypeMVP                  = 2,
    ArchitectureTypeMVVM                 = 3,
};

NS_ASSUME_NONNULL_BEGIN

@interface YUIViewController : UIViewController<YUIViewControllerProtocol,YUIViewProtocol,YUIModelManagerProtocol,YUIViewDelegateProtocol,YUIViewControllerDelegateProtocol>

@property (nonatomic, assign) BOOL isFirstAppear;
@property (nonatomic, assign) ArchitectureType architectureType;
@property (nonatomic, copy) NSString *architectureName;
@property (nonatomic, copy) NSString *bindingName;

@property (nonatomic, strong) UIView <YUIViewProtocol> *mainView;
@property (nonatomic, strong) id <YUIModelManagerProtocol> modelManager;

+(instancetype)sharedInstance;

-(void)configureArchitecture:( ArchitectureType )architectureType bindingName:( NSString * _Nullable )bindingName NS_REQUIRES_SUPER;

-(void)configureArchitectureWithName:( NSString * )architectureName bindingName:( NSString * _Nullable )bindingName NS_REQUIRES_SUPER;

-(void)executeMethodFromArchitecture:(SEL)selector;

-(BOOL)isBlankString:(NSString *)tempStr;

@end

NS_ASSUME_NONNULL_END
