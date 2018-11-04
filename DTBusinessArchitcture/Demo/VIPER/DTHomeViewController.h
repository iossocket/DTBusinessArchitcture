//
//  DTHomeViewController.h
//  DTBusinessArchitcture
//
//  Created by ZhuXueliang on 2018/11/4.
//  Copyright © 2018 iossocket. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DTUserInterfaceProtocol.h"

@protocol DTHomeUserInterfaceProtocol <DTUserInterfaceProtocol>
- (void)sayHi;
@end

@interface DTHomeViewController : UIViewController<DTHomeUserInterfaceProtocol>

@end
