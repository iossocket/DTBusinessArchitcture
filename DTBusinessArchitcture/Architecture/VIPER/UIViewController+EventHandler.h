//
//  UIViewController+EventHandler.h
//  DTBusinessArchitcture
//
//  Created by ZhuXueliang on 2018/11/4.
//  Copyright © 2018 iossocket. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DTPresenterProtocol.h"
#import "DTUserInterfaceProtocol.h"
#import "DTMacro.h"

#define DTConvertPresenterToType(type) DTGORealPort(type, self.presenter)

@interface UIViewController (EventHandler)<DTUserInterfaceProtocol>

@property (nonatomic, strong, readonly) __kindof id<DTPresenterProtocol> presenter;

@end

