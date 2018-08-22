//
//  Presenter.h
//  MVC
//
//  Created by James on 2017/12/1.
//  Copyright © 2017年 tanzhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVPModel.h"
#import "MVPView.h"

@interface Presenter : NSObject <MVPViewDelegate>
@property (nonatomic, strong) MVPModel *model;
@property (nonatomic, strong) MVPView *view;

- (void)usageLogic;
@end
