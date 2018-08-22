//
//  MVPView.h
//  MVC
//
//  Created by James on 2017/12/1.
//  Copyright © 2017年 tanzhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MVPViewDelegate <NSObject>

- (void)viewShowBtnClick;

@end

@interface MVPView : UIView
@property (nonatomic, weak) id<MVPViewDelegate> delegate;

- (void)showView:(NSString *)content;
@end
