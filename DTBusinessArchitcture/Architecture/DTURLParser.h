//
//  DTURLParser.h
//  DTBusinessArchitcture
//
//  Created by ZhuXueliang on 2018/11/3.
//  Copyright © 2018 iossocket. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DTURLParser : NSObject

+ (NSString *)nameForURL:(NSString *)urlString;
+ (NSString *)lastPathComponentForURL:(NSString *)urlString;
+ (NSDictionary *)paramsForURL:(NSString *)urlString;

@end
