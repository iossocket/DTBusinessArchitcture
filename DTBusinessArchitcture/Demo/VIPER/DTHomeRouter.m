//
//  DTHomeRouter.m
//  DTBusinessArchitcture
//
//  Created by ZhuXueliang on 2018/11/4.
//  Copyright © 2018 iossocket. All rights reserved.
//

#import "DTHomeRouter.h"

@implementation DTHomeRouter

+ (instancetype)assemble {
    return [[super routing].assembler autoAssemble];
}

@end
