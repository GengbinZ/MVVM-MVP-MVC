//
//  Presenter.m
//  MVC
//
//  Created by James on 2017/12/1.
//  Copyright © 2017年 tanzhou. All rights reserved.
//

#import "Presenter.h"

@implementation Presenter

- (void)usageLogic {
    NSString *contentStr = self.model.content;
    
    self.view.delegate = self;
    [self.view showView:contentStr];
}

- (void)viewShowBtnClick {
    int num = arc4random_uniform(20);
    self.model.content = [NSString stringWithFormat:@"mvp--%d-",num];
    
    [_view showView:_model.content];
}
@end
