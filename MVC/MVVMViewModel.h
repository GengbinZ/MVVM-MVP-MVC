//
//  MVVMViewModel.h
//  MVC
//
//  Created by James on 2017/12/1.
//  Copyright © 2017年 tanzhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FBKVOController.h"
#import "NSObject+FBKVOController.h"
#import "MVVMModel.h"

@interface MVVMViewModel : NSObject

@property (nonatomic, copy) NSString *contentStr;

- (void)setWithModel:(MVVMModel *)model;

- (void)viewModelPrintClick;
@end
