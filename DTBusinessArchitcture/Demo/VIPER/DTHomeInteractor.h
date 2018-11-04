//
//  DTHomeInteractor.h
//  DTBusinessArchitcture
//
//  Created by ZhuXueliang on 2018/11/4.
//  Copyright © 2018 iossocket. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DTInteractor.h"

@protocol DTHomeInteractorProtocol <NSObject>

- (void)sayHi;

@end

@interface DTHomeInteractor : DTInteractor<DTHomeInteractorProtocol>

@end
