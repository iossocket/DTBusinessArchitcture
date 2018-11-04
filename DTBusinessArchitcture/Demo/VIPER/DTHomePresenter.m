//
//  DTHomePresenter.m
//  DTBusinessArchitcture
//
//  Created by ZhuXueliang on 2018/11/4.
//  Copyright © 2018 iossocket. All rights reserved.
//

#import "DTHomePresenter.h"
#import "DTHomeViewController.h"
#import "DTHomeInteractor.h"

#define Interactor DTConvertInteractorToType(id<DTHomeInteractorProtocol>)
#define Interface DTConvertUserInterfaceToType(id<DTHomeUserInterfaceProtocol>)

@implementation DTHomePresenter

- (void)sayHi {
    NSLog(@"Hi");
    [Interface sayHi];
    [Interactor sayHi];
}

@end
