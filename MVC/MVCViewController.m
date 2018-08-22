//
//  MVCViewController.m
//  MVC
//
//  Created by James on 2017/9/21.
//  Copyright © 2017年 tanzhou. All rights reserved.
//

#import "MVCViewController.h"
#import "MVCView.h"
#import "Paper.h"

@interface MVCViewController () <MVCViewDelegate>
@property (nonatomic, strong) MVCView *myView;
@property (nonatomic, strong) Paper *paper;

@end

@implementation MVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myView = [MVCView new];
    self.myView.delegate = self;
    self.myView.frame = self.view.bounds;
    [self.view addSubview:self.myView];
    
    self.paper = [Paper new];
    self.paper.content = @"mvc内容模式";
    
    [self.myView printOnView:self.paper];

}

// 实现了代理方法
- (void)onPrintBtnClick {
    
    int rand = arc4random_uniform(10);
    _paper.content = [NSString stringWithFormat:@"改变的数据 %d",rand+1];
    
    [self.myView printOnView:self.paper];
}

@end
