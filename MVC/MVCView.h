//
//  MVCView.h
//  MVC
//
//  Created by James on 2017/9/21.
//  Copyright © 2017年 tanzhou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Paper.h"

@protocol MVCViewDelegate <NSObject>

- (void)onPrintBtnClick;

@end

@interface MVCView : UIView

- (void)printOnView:(Paper *)paper;

@property (nonatomic, weak) id<MVCViewDelegate> delegate;
@property (nonatomic, strong) UIButton *btnPrint;

@end
