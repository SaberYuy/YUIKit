/**
 * Tencent is pleased to support the open source community by making YUI_iOS available.
 * Copyright (C) 2016-2021 THL A29 Limited, a Tencent company. All rights reserved.
 * Licensed under the MIT License (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at
 * http://opensource.org/licenses/MIT
 * Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
 */

//
//  YUILogNameManager.m
//  YUIKit
//
//  Created by YUI Team on 2018/1/24.
//

#import "YUILogNameManager.h"
#import "YUILogger.h"

NSString *const YUILoggerAllNamesKeyInUserDefaults = @"YUILoggerAllNamesKeyInUserDefaults";

@interface YUILogNameManager ()

@property(nonatomic, strong) NSMutableDictionary<NSString *, NSNumber *> *mutableAllNames;
@property(nonatomic, assign) BOOL didInitialize;
@end

@implementation YUILogNameManager

- (instancetype)init {
    if (self = [super init]) {
        self.mutableAllNames = [[NSMutableDictionary alloc] init];
        
        NSDictionary<NSString *, NSNumber *> *allYUILogNames = [[NSUserDefaults standardUserDefaults] dictionaryForKey:YUILoggerAllNamesKeyInUserDefaults];
        for (NSString *logName in allYUILogNames) {
            [self setEnabled:allYUILogNames[logName].boolValue forLogName:logName];
        }
        
        // 初始化时从 NSUserDefaults 里获取值的过程，不希望触发 delegate，所以加这个标志位
        self.didInitialize = YES;
    }
    return self;
}

- (NSDictionary<NSString *,NSNumber *> *)allNames {
    if (self.mutableAllNames.count) {
        return [self.mutableAllNames copy];
    }
    return nil;
}

- (BOOL)containsLogName:(NSString *)logName {
    if (logName.length > 0) {
        return !!self.mutableAllNames[logName];
    }
    return NO;
}

- (void)setEnabled:(BOOL)enabled forLogName:(NSString *)logName {
    if (logName.length > 0) {
        self.mutableAllNames[logName] = @(enabled);
        
        if (!self.didInitialize) return;
        
        [self synchronizeUserDefaults];
        
        if ([[YUILogger sharedInstance].delegate respondsToSelector:@selector(YUILogName:didChangeEnabled:)]) {
            [[YUILogger sharedInstance].delegate YUILogName:logName didChangeEnabled:enabled];
        }
    }
}

- (BOOL)enabledForLogName:(NSString *)logName {
    if (logName.length > 0) {
        if ([self containsLogName:logName]) {
            return [self.mutableAllNames[logName] boolValue];
        }
    }
    return YES;
}

- (void)removeLogName:(NSString *)logName {
    if (logName.length > 0) {
        [self.mutableAllNames removeObjectForKey:logName];
        
        if (!self.didInitialize) return;
        
        [self synchronizeUserDefaults];
        
        if ([[YUILogger sharedInstance].delegate respondsToSelector:@selector(YUILogNameDidRemove:)]) {
            [[YUILogger sharedInstance].delegate YUILogNameDidRemove:logName];
        }
    }
}

- (void)removeAllNames {
    BOOL shouldCallDelegate = self.didInitialize && [[YUILogger sharedInstance].delegate respondsToSelector:@selector(YUILogNameDidRemove:)];
    NSDictionary<NSString *, NSNumber *> *allNames = nil;
    if (shouldCallDelegate) {
        allNames = self.allNames;
    }
    
    [self.mutableAllNames removeAllObjects];
    
    [self synchronizeUserDefaults];
    
    if (shouldCallDelegate) {
        for (NSString *logName in allNames.allKeys) {
            [[YUILogger sharedInstance].delegate YUILogNameDidRemove:logName];
        }
    }
}

- (void)synchronizeUserDefaults {
    [[NSUserDefaults standardUserDefaults] setObject:self.allNames forKey:YUILoggerAllNamesKeyInUserDefaults];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
