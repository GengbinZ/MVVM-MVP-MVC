//
//  ViewController.m
//  MVC
//
//  Created by James on 2017/9/21.
//  Copyright © 2017年 tanzhou. All rights reserved.
//

#import "ViewController.h"
#import "MVCViewController.h"
#import "MVPViewController.h"
#import "MVVMController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [self setupMVC];
//        [self setupMVP];
        [self setupMVVM];
    });
    
}

- (void)setupMVC {
    MVCViewController *vc = [MVCViewController new];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)setupMVP {
    MVPViewController *vc = [MVPViewController new];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)setupMVVM {
    MVVMController *vc = [MVVMController new];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
