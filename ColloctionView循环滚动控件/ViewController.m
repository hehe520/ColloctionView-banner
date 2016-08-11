//
//  ViewController.m
//  ColloctionView循环滚动控件
//
//  Created by caokun on 16/1/22.
//  Copyright © 2016年 caokun. All rights reserved.
//

#import "ViewController.h"
#import "CircleScrollView.h"        // 自定义的滚动控件

@interface ViewController () <CircleScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    CGSize sSize = [UIScreen mainScreen].bounds.size;
    CircleScrollView *scrollView1 = [[CircleScrollView alloc] initWithFrame:CGRectMake(0, 20, sSize.width, sSize.width * 504 / 1080.0)];
    scrollView1.delegate = self;
    [scrollView1 images:@[[UIImage imageNamed:@"photo_loading"]]];      // 占位图
    [self.view addSubview:scrollView1];
    
    UIImage *m1 = [UIImage imageNamed:@"m1.jpg"];
    UIImage *m2 = [UIImage imageNamed:@"m2.jpg"];
    UIImage *m3 = [UIImage imageNamed:@"m3.jpg"];
    UIImage *m4 = [UIImage imageNamed:@"m4.jpg"];
    UIImage *m5 = [UIImage imageNamed:@"m5.jpg"];
    
    CircleScrollView *scrollView2 = [[CircleScrollView alloc] initWithFrame:CGRectMake(0, 220, sSize.width, sSize.width * 504 / 1080.0)];
    scrollView2.delegate = self;
    scrollView2.duringTime = 2.0;
    [scrollView2 images:@[m1, m2]];
    [self.view addSubview:scrollView2];
    
    CircleScrollView *scrollView3 = [[CircleScrollView alloc] initWithFrame:CGRectMake(0, 420, sSize.width, sSize.width * 504 / 1080.0)];
    scrollView3.delegate = self;
    scrollView3.duringTime = 1.0;
    [scrollView3 images:@[m1, m2, m3, m4, m5]];
    [self.view addSubview:scrollView3];
}

- (void)didClickImageAtIndex:(NSInteger)index scrollView:(CircleScrollView *)scrollView {
    NSLog(@"%li", index);
}

@end
