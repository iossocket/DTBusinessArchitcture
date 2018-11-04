//
//  DTRouter.h
//  DTBusinessArchitcture
//
//  Created by ZhuXueliang on 2018/11/4.
//  Copyright © 2018 iossocket. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DTRouterProtocol.h"
#import "DTPresenterProtocol.h"
#import "DTAssembler.h"

@interface DTRouter : NSObject<DTRouterProtocol>

@property (nonatomic, strong, readonly) DTAssembler *assembler;
@property (nonatomic, strong, readonly) __kindof UIViewController *userInterface;
@property (nonatomic, strong, readonly) __kindof id<DTPresenterProtocol> presenter;

+ (instancetype)assemble;
+ (instancetype)routing;

@end
