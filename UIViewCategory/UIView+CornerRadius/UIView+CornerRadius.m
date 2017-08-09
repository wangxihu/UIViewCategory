//
//  UIView+CornerRadius.m
//  系统API生产二维码
//
//  Created by Simon on 16/2/25.
//  Copyright © 2016年 Simon. All rights reserved.
//

#import "UIView+CornerRadius.h"

@implementation UIView (CornerRadius)
- (void)setCornerRadius:(CGFloat)cornerRadius{
//    self.layer.shouldRasterize = YES;//这句话不能加 加了之后 界面会模糊
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = cornerRadius > 0;
    
//    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
//    imageView.image = [UIImage imageNamed:@"myImg"];
//    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:imageView.bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:imageView.bounds.size];
//    CAShapeLayer *maskLayer = [[CAShapeLayer alloc]init];
//    //设置大小
//    maskLayer.frame = imageView.bounds;
//    //设置图形样子
//    maskLayer.path = maskPath.CGPath;
//    imageView.layer.mask = maskLayer;
//    [self.view addSubview:imageView];
}

- (CGFloat)cornerRadius{
    return self.layer.cornerRadius;
}

- (void)setLayerBoderWidth:(CGFloat)layerBoderWidth{
    self.layer.borderWidth = layerBoderWidth;
}

- (void)setLayerBoderColer:(UIColor *)layerBoderColer{
    self.layer.borderColor = layerBoderColer.CGColor;
}
@end
