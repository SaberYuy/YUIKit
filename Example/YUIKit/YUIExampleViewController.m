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

-(void)configureArchitecture{
    
    [super configureArchitecture:ArchitectureTypeMVC];
}

//-(void)setupMainView{
//    
//    [super setupMainView]
//}

-(void)initSubviews{
    
    [super initSubviews];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake( 100, 100, 100, 100)];
    [btn setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:btn];
}

@end
