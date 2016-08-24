# ColloctionView-banner
ColloctionView循环滚动控件，考虑到程序的效率，以及用户体验写的。

能适应用户手指不离开屏幕一直滑动的极端情况，实现思路在注释中有详细说明

使用方式：
```
    CircleScrollView *scrollView = [[CircleScrollView alloc] initWithFrame:CGRectMake(0, 20, 375, 175)];
    scrollView.delegate = self;
    [scrollView images:@[[UIImage imageNamed:@"占位图"]]];   // 可设置占位图
    
    // 等网络下好图片在替换上
    [scrollView images:@[m1, m2]];   
    scrollView.duringTime = 1.0;        // 设置轮播时间
    [self.view addSubview:scrollView];
    
    // 图片可以点击，有代理方法传出点击 index
    - (void)didClickImageAtIndex:(NSInteger)index scrollView:(CircleScrollView *)scrollView;
```

如果您发现程序有问题，欢迎反馈，谢谢，我的QQ:657668857，或者邮箱657668857@qq.com
