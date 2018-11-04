//
//  UIViewController+EventHandler.m
//  DTBusinessArchitcture
//
//  Created by ZhuXueliang on 2018/11/4.
//  Copyright © 2018 iossocket. All rights reserved.
//

#import "UIViewController+EventHandler.h"
#import <objc/runtime.h>

@implementation UIViewController (EventHandler)

- (void)setPresenter:(__kindof id<DTPresenterProtocol>)presenter {
    objc_setAssociatedObject(self, @selector(presenter), presenter, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (__kindof id<DTPresenterProtocol>)presenter {
    return objc_getAssociatedObject(self, _cmd);
}

@end
