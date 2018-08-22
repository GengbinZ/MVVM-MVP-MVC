//
//  MVCView.m
//  MVC
//
//  Created by James on 2017/9/21.
//  Copyright © 2017年 tanzhou. All rights reserved.
//

#import "MVCView.h"

@implementation MVCView

- (void)printOnView:(Paper *)paper {
    NSLog(@"在MVCView中打印出的内容:%@",paper.content);
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor grayColor];
        
        self.btnPrint = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
        [self.btnPrint setTitle:@"print" forState:UIControlStateNormal];
        [self.btnPrint addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.btnPrint];
    }
    return self;
}

- (void)onPrintClick {
//    NSLog(@"采集的事件");
    if (_delegate && [self.delegate respondsToSelector:@selector(onPrintBtnClick)]) {
        [_delegate onPrintBtnClick];
    }
}

@end
