//
//  DTHomeViewController.m
//  DTBusinessArchitcture
//
//  Created by ZhuXueliang on 2018/11/4.
//  Copyright © 2018 iossocket. All rights reserved.
//

#import "DTHomeViewController.h"
#import "DTHomePresenter.h"
#import "UIViewController+EventHandler.h"

#define Presenter DTConvertPresenterToType(id<DTHomePresenterProtocol>)

@interface DTHomeViewController ()

@end

@implementation DTHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [Presenter sayHi];
}

- (void)sayHi {
    NSLog(@"Hi 2");
}

@end
