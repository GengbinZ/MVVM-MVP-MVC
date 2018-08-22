//
//  MVVMController.m
//  MVC
//
//  Created by James on 2017/12/1.
//  Copyright © 2017年 tanzhou. All rights reserved.
//

#import "MVVMController.h"
#import "MVVMModel.h"
#import "MVVMView.h"
#import "MVVMViewModel.h"

@interface MVVMController ()
@property (nonatomic, strong) MVVMView *mvvmView;
@property (nonatomic, strong) MVVMModel *model;
@property (nonatomic, strong) MVVMViewModel *viewModel;
@end

@implementation MVVMController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.model = [[MVVMModel alloc] init];
    self.model.content = @"MVVM架构模式";
    
    _viewModel = [MVVMViewModel new];
    
    _mvvmView = [MVVMView new];
    _mvvmView.frame = self.view.bounds;
    [self.view addSubview:_mvvmView];
    
    [_viewModel setWithModel:_model];
    [_mvvmView showView:_viewModel];

}

@end
