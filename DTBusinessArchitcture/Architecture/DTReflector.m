//
//  DTReflector.m
//  DTBusinessArchitcture
//
//  Created by ZhuXueliang on 2018/11/3.
//  Copyright © 2018 iossocket. All rights reserved.
//

#import "DTReflector.h"

@implementation DTReflector

+ (BOOL)existComponent:(NSString *)componentName {
    if (!componentName || componentName.length <= 0) {
        return NO;
    }
    NSString *fullName = [self combineFullNameByComponent:componentName];
    Class klass = NSClassFromString(fullName);
    if (!klass) {
        return NO;
    }
    return YES;
}

+ (DTRouter *)createRouterForComponent:(NSString *)componentName {
    NSString *fullName = [self combineFullNameByComponent:componentName];
    Class klass = NSClassFromString(fullName);
    if (!klass) {
        return nil;
    }
    return [klass assemble];
}

+ (NSString *)componentNameForRouter:(DTRouter *)router {
    if (!router) {
        return nil;
    }
    NSString *stuffix = @"Router";
    NSString *prefix = @"DT";
    NSString *klassName = NSStringFromClass(router.class);
    NSString *lastPart = [klassName componentsSeparatedByString:prefix].lastObject;
    return [lastPart componentsSeparatedByString:stuffix].firstObject;
}

+ (NSString *)combineFullNameByComponent:(NSString *)componentName {
     return [NSString stringWithFormat:@"%@%@%@", @"DT", componentName, @"Router"];
}

@end
