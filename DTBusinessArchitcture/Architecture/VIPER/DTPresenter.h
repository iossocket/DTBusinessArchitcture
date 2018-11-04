//
//  DTPresenter.h
//  DTBusinessArchitcture
//
//  Created by ZhuXueliang on 2018/11/4.
//  Copyright © 2018 iossocket. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DTPresenterProtocol.h"
#import "DTInteractorProtocol.h"
#import "DTUserInterfaceProtocol.h"
#import "DTRouterProtocol.h"
#import "DTMacro.h"

#define DTConvertInteractorToType(type) DTGORealPort(type, self.interactor)
#define DTConvertUserInterfaceToType(type) DTGORealPort(type, self.userInterface)

@interface DTPresenter : NSObject<DTPresenterProtocol>

@property (nonatomic, weak, readonly) __kindof id<DTUserInterfaceProtocol> userInterface;
@property (nonatomic, strong, readonly) __kindof id<DTInteractorProtocol> interactor;
@property (nonatomic, weak, readonly) __kindof id<DTRouterProtocol> router;

@end
