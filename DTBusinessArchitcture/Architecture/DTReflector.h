//
//  DTReflector.h
//  DTBusinessArchitcture
//
//  Created by ZhuXueliang on 2018/11/3.
//  Copyright © 2018 iossocket. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DTRouter.h"

@interface DTReflector : NSObject

+ (BOOL)existComponent:(NSString *)componentName;
+ (DTRouter *)createRouterForComponent:(NSString *)componentName;

+ (NSString *)componentNameForRouter:(DTRouter *)router;

@end
