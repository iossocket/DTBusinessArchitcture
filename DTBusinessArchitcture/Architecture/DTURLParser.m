//
//  DTURLParser.m
//  DTBusinessArchitcture
//
//  Created by ZhuXueliang on 2018/11/3.
//  Copyright © 2018 iossocket. All rights reserved.
//

#import "DTURLParser.h"

@implementation DTURLParser

+ (NSString *)nameForURL:(NSString *)urlString {
    NSArray<NSString *> *urlComponents = [urlString componentsSeparatedByString:@"?"];
    if (urlComponents && urlComponents.count) {
        return urlComponents[0];
    }
    return urlString;
}

+ (NSString *)lastPathComponentForURL:(NSString *)urlString {
    NSURL *url = [NSURL URLWithString:urlString];
    NSString *lastComp = url.lastPathComponent;
    if ([lastComp isEqualToString:@""]) {
        lastComp = url.host;
    }
    return lastComp;
}

+ (NSDictionary *)paramsForURL:(NSString *)urlString {
    NSMutableDictionary *queryDict = [NSMutableDictionary dictionary];
    NSRange questionMark = [urlString rangeOfString:@"?"];
    if (questionMark.length == 0) {
        return nil;
    }
    NSString *paramString = [urlString substringFromIndex:questionMark.location + 1];
    NSArray *keyValuePairs = [paramString componentsSeparatedByString:@"&"];
    for (NSString *keyValuePair in keyValuePairs) {
        NSArray *element = [keyValuePair componentsSeparatedByString:@"="];
        if (element.count != 2) continue;
        NSString *key = element[0], *value = element[1];
        if (key.length == 0) continue;
        if ([value hasPrefix:@"http%3A%2F%2F"] || [value hasPrefix:@"https%3A%2F%2F"]) {
            value = [self decodeFromPercentEscapeString:value];
        }
        queryDict[key] = value;
    }
    return [NSDictionary dictionaryWithDictionary:queryDict];
}

+ (NSString *)decodeFromPercentEscapeString:(NSString *)input
{
    NSMutableString *outputStr = [NSMutableString stringWithString:input];
    [outputStr replaceOccurrencesOfString:@"+"
                               withString:@""
                                  options:NSLiteralSearch
                                    range:NSMakeRange(0,outputStr.length)];
    return [outputStr stringByRemovingPercentEncoding];
}

@end
