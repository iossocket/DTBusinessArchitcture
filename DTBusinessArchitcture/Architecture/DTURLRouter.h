//
//  DTURLRouter.h
//  DTBusinessArchitcture
//
//  Created by ZhuXueliang on 2018/11/3.
//  Copyright © 2018 iossocket. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DTRouter;

@interface DTURLRouter : NSObject

+ (void)initURLGroup:(NSArray<NSString *> *)urlGroup;
+ (void)registerUrl:(NSString *)url;
+ (void)removeUrl:(NSString *)url;

+ (DTRouter *)routerForUrl:(NSString *)url;

@end
