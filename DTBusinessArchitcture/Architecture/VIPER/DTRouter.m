//
//  DTRouter.m
//  DTBusinessArchitcture
//
//  Created by ZhuXueliang on 2018/11/4.
//  Copyright © 2018 iossocket. All rights reserved.
//

#import "DTRouter.h"

@interface DTRouter ()

@property (nonatomic, strong, readwrite) DTAssembler *assembler;

@end

@implementation DTRouter

+ (instancetype)assemble {
    NSLog(@"It should be impelemented by subclass");
    return nil;
}

+ (instancetype)routing {
    DTRouter *router = [[self alloc] init];
    router.assembler = [[DTAssembler alloc] initWithRouter:router];
    return router;
}

@end
