//
//  CircleScrollView.h
//  ColloctionView循环滚动控件
//
//  Created by caokun on 16/1/28.
//  Copyright © 2016年 caokun. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CircleScrollView;
@protocol CircleScrollViewDelegate <NSObject>

- (void)didClickImageAtIndex:(NSInteger)index scrollView:(CircleScrollView *)scrollView;

@end

@interface CircleScrollView : UIView

@property (weak, nonatomic) id<CircleScrollViewDelegate> delegate;
@property (assign, nonatomic) NSTimeInterval duringTime;            // 间隔时间，0表示不自动滚动

- (void)images:(NSArray *)images;
- (void)closeTimer;
- (void)openTimer;

@end
