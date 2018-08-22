//
//  MVVMView.h
//  MVC
//
//  Created by James on 2017/12/1.
//  Copyright © 2017年 tanzhou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVVMViewModel.h"


@interface MVVMView : UIView
@property (nonatomic, strong) UILabel *labelContent;
@property (nonatomic, strong) UIButton *btnPrint;
@property (nonatomic, strong) MVVMViewModel *vm;

- (void)showView:(MVVMViewModel *)viewModel;

@end
