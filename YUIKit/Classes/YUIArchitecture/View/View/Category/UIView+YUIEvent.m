//
//  UIView+YUIEvent.m
//  YUIKit
//
//  Created by YUI on 16/3/5.
//  Copyright © 2016年 SaberYuy. All rights reserved.
//

#import "UIView+YUIEvent.h"
#import "YUICore.h"

@implementation UIView (YUIEvent)

YUISynthesizeIdWeakProperty(yui_viewModel, setYui_viewModel)

//YUISynthesizeBOOLProperty(yui_isControllerRootView, setYui_isControllerRootView)
//
//static char kAssociatedObjectKey_viewController;
//- (void)setViewController:(__kindof UIViewController * _Nullable)yui_viewController {
//    
//    YUIWeakObjectContainer *weakContainer = objc_getAssociatedObject(self, &kAssociatedObjectKey_viewController);
//    if (!weakContainer) {
//        weakContainer = [[YUIWeakObjectContainer alloc] init];
//    }
//    weakContainer.object = yui_viewController;
//    objc_setAssociatedObject(self, &kAssociatedObjectKey_viewController, weakContainer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//    
//    self.yui_isControllerRootView = !!yui_viewController;
//}
//
//- (__kindof UIViewController *)viewController {
//    if (self.yui_isControllerRootView) {
//        return (__kindof UIViewController *)((YUIWeakObjectContainer *)objc_getAssociatedObject(self, &kAssociatedObjectKey_viewController)).object;
//    }
//    return self.superview.yui_viewController;
//}

- (id<YUIViewDelegateProtocol>)yui_viewDelegate {
    
    id currentViewDelegate = objc_getAssociatedObject(self, _cmd);
    
    if (currentViewDelegate == nil) {
        
        UIView *superView = self.superview;
        while (superView != nil) {
            if (superView.yui_viewDelegate != nil) {
                currentViewDelegate = superView.yui_viewDelegate;
                break;
            }
            superView = superView.superview;
        }
        
        if (currentViewDelegate != nil) {
            
            [self setYui_viewDelegate:currentViewDelegate];
        }
    }
    
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setYui_viewDelegate:(id<YUIViewDelegateProtocol>)viewDelegate {
    objc_setAssociatedObject(self, @selector(yui_viewDelegate), viewDelegate, OBJC_ASSOCIATION_ASSIGN);
}

//- (id<YUIViewModelDelegateProtocol>)viewModel {
//
//    return objc_getAssociatedObject(self, _cmd);
//}
//
//- (void)setViewModel:(id<YUIViewModelDelegateProtocol>)viewModel {
//
//    objc_setAssociatedObject(self, @selector(viewModel), viewModel, OBJC_ASSOCIATION_ASSIGN);
//}
//
//- (ViewEventBlock)viewEventBlock {
//    return objc_getAssociatedObject(self, @selector(viewEventBlock));
//}
//
//- (void)setViewEventBlock:(ViewEventBlock)viewEventBlock {
//    objc_setAssociatedObject(self, @selector(viewEventBlock), viewEventBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
//}

@end
