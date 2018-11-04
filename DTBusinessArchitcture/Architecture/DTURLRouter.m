//
//  DTURLRouter.m
//  DTBusinessArchitcture
//
//  Created by ZhuXueliang on 2018/11/3.
//  Copyright © 2018 iossocket. All rights reserved.
//

#import "DTURLRouter.h"
#import "DTURLParser.h"
#import "DTReflector.h"
#import "DTRouter.h"

@implementation DTURLRouter

static NSMutableDictionary<NSString *, NSString *> *routeTable;

+ (void)initialize {
    if (self == [DTURLRouter class]) {
        routeTable = @{}.mutableCopy;
    }
}

+ (void)initURLGroup:(NSArray<NSString *> *)urlGroup {
    if (!urlGroup) {
        return;
    }
    
    for (NSString *url in urlGroup) {
        [self registerUrl:url];
    }
}

+ (void)registerUrl:(NSString *)url {
    NSString *last = [DTURLParser lastPathComponentForURL:url];
    if (last.length > 1) {
        NSString *componentName = [NSString stringWithFormat:@"%@%@",[last substringToIndex:1].uppercaseString, [last substringFromIndex:1]];
        [self registerUrl:url forComponent:componentName];
    } else {
        [self registerUrl:url forComponent:last.uppercaseString];
    }
}

+ (void)registerUrl:(NSString *)url forComponent:(NSString *)componentName {
    routeTable[url] = componentName;
}

+ (void)removeUrl:(NSString *)url {
    [routeTable removeObjectForKey:url];
}

+ (DTRouter *)routerForUrl:(NSString *)url {
    NSString *path = [DTURLParser nameForURL:url];
    NSString *componentName = routeTable[path];
    
    if (!componentName || [componentName isEqualToString:@""]) {
        NSLog(@"This component did not be register");
        return nil;
    }
    
    if (![DTReflector existComponent:componentName]) {
        return nil;
    };
    
    DTRouter *router = [DTReflector createRouterForComponent:componentName];
    if (!router) {
        return nil;
    }
    
    return router;
}

@end
