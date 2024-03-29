//
//  YUIViewController+MVC.m
//  YUIKit
//
//  Created by YUI on 2020/12/14.
//

#import "YUIViewController+MVC.h"

#import "UIView+YUIEvent.h"

//#pragma mark - System Callback
//#pragma mark - Init
//#pragma mark - View Init
//#pragma mark - View Layout Callback
//#pragma mark - Gesture Interaction
//#pragma mark - Animation Effect
//#pragma mark - Model Interaction
//#pragma mark - Model Interaction Callback
//#pragma mark - View Interaction
//#pragma mark - View Interaction Callback
//#pragma mark - Active Trigger
//#pragma mark - Passive Callback
//#pragma mark - Transition Callback

@implementation YUIViewController (MVC)

#pragma mark - init

- (void)mvc_configureArchitectureWithBindingName:(NSString *)bindingName {
    
    //  containerView
    Class containerViewClass = NSClassFromString([NSString stringWithFormat:@"%@View", bindingName]);
    if (containerViewClass != NULL && [containerViewClass conformsToProtocol:@protocol(YUIViewProtocol)]) {
        
        self.containerView = [containerViewClass new];
    }
    
    //  ModelManager
    Class modelManagerClass = NSClassFromString([NSString stringWithFormat:@"%@ModelManager", bindingName]);
    if (modelManagerClass != NULL && [modelManagerClass conformsToProtocol:@protocol(YUIModelManagerProtocol)]) {
        
        self.modelManager = [modelManagerClass new];
    }
}

//- (void)mvc_didInitialize {
//    
//}

#pragma mark - Lifecycle

- (void)mvc_viewDidLoad {
    
    [self setupContainerView];
    
    [self initSubviews];
    
    [self configureBingding];
    
    [self setupSubviewsConstraints];
}

- (void)mvc_configureBingding {
    
    if(self.containerView) {
//        self.containerView.viewController = self;
        if([self conformsToProtocol:@protocol(YUIViewDelegateProtocol)]) {
            
            self.containerView.yui_viewDelegate = self;
        }
    }
}

- (void)mvc_viewDidLayoutSubviews {
    
    [self setupSubviewsFrame];
}

- (void)mvc_dealloc {
    
    [self cleanupObserver];
}

//#pragma mark - UITableViewDelegate
#pragma mark - ViewDelegate
#pragma mark - CustomDelegate
#pragma mark - event response
#pragma mark - private methods
#pragma mark - getters and setters

@end
