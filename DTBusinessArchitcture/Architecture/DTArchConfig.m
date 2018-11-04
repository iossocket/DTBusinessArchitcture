//
//  DTArchConfig.m
//  DTBusinessArchitcture
//
//  Created by ZhuXueliang on 2018/11/3.
//  Copyright © 2018 iossocket. All rights reserved.
//

#import "DTArchConfig.h"

@implementation DTArchConfig

+ (instancetype)shareInstance {
    static DTArchConfig* archConfig = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        archConfig = [[DTArchConfig alloc] init];
    });
    return archConfig;
}

@end
