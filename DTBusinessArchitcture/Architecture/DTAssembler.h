//
//  DTAssembler.h
//  DTBusinessArchitcture
//
//  Created by ZhuXueliang on 2018/11/3.
//  Copyright © 2018 iossocket. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DTRouter;

@interface DTAssembler : NSObject

- (instancetype)initWithRouter:(DTRouter *)router;
- (__kindof DTRouter *)autoAssemble;

@end
