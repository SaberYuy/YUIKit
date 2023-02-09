//
//  YUIExampleView.m
//  YUIKit_Example
//
//  Created by YUI on 2022/1/6.
//  Copyright © 2022 SaberYuy. All rights reserved.
//

#import "YUIExampleView.h"

@implementation YUIExampleView

-(void)setupContainerView {
    
    [self setBackgroundColor:[UIColor clearColor]];
}

-(void)initSubviews {
    
    [super initSubviews];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake( 100, 100, 100, 100)];
    [btn setBackgroundColor:[UIColor redColor]];
    [self addSubview:btn];
}

@end
