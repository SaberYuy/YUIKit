//
//  YUIViewModel.m
//  YUIKit
//
//  Created by YUI on 2021/2/21.
//

#import "YUIViewModel.h"

@implementation YUIViewModel

#pragma mark - init

- (instancetype)init {
    
    self = [super init];
    
    if(self) {
        
        [self didInitialize];
    }
    return self;
}

- (void)didInitialize {
    
    // Rewrite this func in SubClass !
}

#pragma mark - <YUIViewControllerDelegateProtocol>

- (void)receiveViewController:(__kindof UIViewController *)viewController name:(NSString *)name userInfo:(NSDictionary *)userInfo {
    
}

#pragma mark - <YUIViewManagerDelegate>

- (void)receiveViewManager:(id)viewManager name:(NSString *)name userInfo:(NSDictionary *)userInfo {
    
}

@end
