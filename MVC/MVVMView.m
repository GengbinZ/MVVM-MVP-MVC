//
//  MVVMView.m
//  MVC
//
//  Created by James on 2017/12/1.
//  Copyright © 2017年 tanzhou. All rights reserved.
//

#import "MVVMView.h"

@implementation MVVMView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.backgroundColor = [UIColor grayColor];
        self.labelContent = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 300, 30)];
        
        self.labelContent.textAlignment = NSTextAlignmentCenter;
        
        self.labelContent.textColor = [UIColor blackColor];
        
        [self addSubview:self.labelContent];
        
        self.btnPrint = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 100, 50)];
        
        [self.btnPrint setTitle:@"来点我呀---" forState:UIControlStateNormal];
        
        [self.btnPrint addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
        
        
        [self addSubview:self.btnPrint];
        
    }
    return self;
}

- (void)onPrintClick {
    [self.vm viewModelPrintClick];
}

- (void)showView:(MVVMViewModel *)viewModel {
    self.vm = viewModel;
    [self.KVOController observe:viewModel keyPath:@"contentStr" options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
        _labelContent.text = change[NSKeyValueChangeNewKey];
    }];
}

@end
