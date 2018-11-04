//
//  DTHomePresenter.h
//  DTBusinessArchitcture
//
//  Created by ZhuXueliang on 2018/11/4.
//  Copyright © 2018 iossocket. All rights reserved.
//

#import "DTPresenter.h"

@protocol DTHomePresenterProtocol <NSObject>

- (void)sayHi;

@end

@interface DTHomePresenter : DTPresenter<DTHomePresenterProtocol>

@end
