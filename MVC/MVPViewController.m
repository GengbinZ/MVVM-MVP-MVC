//
//  MVPViewController.m
//  MVC
//
//  Created by James on 2017/12/1.
//  Copyright © 2017年 tanzhou. All rights reserved.
//

#import "MVPViewController.h"
#import "Presenter.h"
#import "MVPModel.h"
#import "MVPView.h"

@interface MVPViewController () 
@property (nonatomic, strong) Presenter *presenter;
@property (nonatomic, strong) MVPView  *mvpView;
@property (nonatomic, strong) MVPModel *mvpModel;
@end

@implementation MVPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _presenter = [[Presenter alloc] init];
    
    _mvpView = [[MVPView alloc] init];
    _mvpView.frame = self.view.bounds;
    [self.view addSubview:_mvpView];
    
    _mvpModel = [MVPModel new];
    _mvpModel.content = @"MVP的模式";
    // model还没赋值
    _presenter.model = _mvpModel;
    _presenter.view = _mvpView;
    [_presenter usageLogic];
    
}


@end
