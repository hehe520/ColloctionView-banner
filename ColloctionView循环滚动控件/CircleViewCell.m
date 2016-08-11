//
//  CircleViewCell.m
//  ColloctionView循环滚动控件
//
//  Created by caokun on 16/1/28.
//  Copyright © 2016年 caokun. All rights reserved.
//

#import "CircleViewCell.h"

@interface CircleViewCell ()

@property (strong, nonatomic) UIImageView *imageV;

@end

@implementation CircleViewCell

- (instancetype)init {
    if (self = [super init]) {
        [self myInit];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self myInit];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self myInit];
    }
    return self;
}

- (void)myInit {
    [self.contentView addSubview:self.imageV];
}

- (UIImageView *)imageV {
    if (_imageV == nil) {
        _imageV = [[UIImageView alloc] init];
        _imageV.contentMode = UIViewContentModeScaleAspectFill;
        _imageV.userInteractionEnabled = YES;
        _imageV.backgroundColor = [UIColor whiteColor];
    }
    return _imageV;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.imageV.frame = self.contentView.bounds;
}

- (void)setImage:(UIImage *)image {
    _image = image;
    
    self.imageV.image = image;
}

@end
