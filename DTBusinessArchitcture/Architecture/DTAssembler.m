//
//  DTAssembler.m
//  DTBusinessArchitcture
//
//  Created by ZhuXueliang on 2018/11/3.
//  Copyright © 2018 iossocket. All rights reserved.
//

#import "DTAssembler.h"
#import "DTReflector.h"
#import "DTRouter.h"

@interface DTAssembler ()

@property (nonatomic, weak) DTRouter *router;

@end

@implementation DTAssembler

- (instancetype)initWithRouter:(DTRouter *)router {
    self = [super init];
    if (self) {
        self.router = router;
    }
    return self;
}

- (__kindof DTRouter *)autoAssemble {
    NSString *name = [DTReflector componentNameForRouter:self.router];
    if (!name) {
        return nil;
    }
    NSString *prefix = @"DT";
    NSString *viewControllerClassName = [NSString stringWithFormat:@"%@%@%@", prefix, name, @"ViewController"];
    NSString *presenterClassName = [NSString stringWithFormat:@"%@%@%@", prefix, name, @"Presenter"];
    NSString *interactorClassName = [NSString stringWithFormat:@"%@%@%@", prefix, name, @"Interactor"];
    
    Class viewControllerClass = NSClassFromString(viewControllerClassName);
    Class presenterClass = NSClassFromString(presenterClassName);
    Class interactorClass = NSClassFromString(interactorClassName);
    
    if (!viewControllerClass || !presenterClass || !interactorClass) {
        return nil;
    }
    
    id viewController = [[viewControllerClass alloc] init];
    id presenter = [[presenterClass alloc] init];
    id interactor = [[interactorClass alloc] init];
    
    [self.router setValue:viewController forKey:@"userInterface"];
    [self.router setValue:presenter forKey:@"presenter"];
    
    [presenter setValue:interactor forKey:@"interactor"];
    [presenter setValue:viewController forKey:@"userInterface"];
    [presenter setValue:self.router forKey:@"router"];
    
    [viewController setValue:presenter forKey:@"presenter"];
    
    return self.router;
}

@end
