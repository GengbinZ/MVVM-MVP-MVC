//
//  MVVMViewModel.m
//  MVC
//
//  Created by James on 2017/12/1.
//  Copyright © 2017年 tanzhou. All rights reserved.
//

#import "MVVMViewModel.h"

@interface MVVMViewModel ()
@property (nonatomic, strong) MVVMModel *model;
@end

@implementation MVVMViewModel
- (void)setWithModel:(MVVMModel *)model {
    self.model = model;
    self.contentStr = self.model.content;
}

- (void)viewModelPrintClick {
    self.model.content = @"MVVMModel";
    
    int num = arc4random_uniform(20);
    self.model.content = [NSString stringWithFormat:@"%d",num];
    self.contentStr = self.model.content;
}

@end
