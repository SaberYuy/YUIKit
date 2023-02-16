//
//  YUIExampleViewController.m
//  YUIKit_Example
//
//  Created by YUI on 2021/10/26.
//  Copyright © 2021 SaberYuy. All rights reserved.
//

#import "YUIExampleViewController.h"


@interface YUIExampleViewController ()

@end

@implementation YUIExampleViewController

-(void)configureArchitecture {
    
    [super configureArchitecture: YUIArchitectureTypeMVC];
}

//-(void)setupContainerView {
//    
//    [super setupContainerView]
//}

-(void)initSubviews {
    
    [super initSubviews];
    
    [self.view setViewDelegate:nil];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake( 100, 100, 100, 100)];
    [btn setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:btn];
}

@end
