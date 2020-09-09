//
//  UIView+CornerRadius.m
//  系统API生产二维码
//
//  Created by Simon on 16/2/25.
//  Copyright © 2016年 Simon. All rights reserved.
//

#import "UIView+CornerRadius.h"

@implementation UIView (CornerRadius)
@dynamic layerBoderWidth;
@dynamic layerBoderColor;
- (void)setCornerRadius:(CGFloat)cornerRadius{
    self.layerBoderColor = [UIColor whiteColor];
    self.layerBoderWidth = 1.0;
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = cornerRadius > 0;
}

- (CGFloat)cornerRadius{
    return self.layer.cornerRadius;
}

- (void)setLayerBoderWidth:(CGFloat)layerBoderWidth{
    self.layer.borderWidth = layerBoderWidth;
}

- (void)setLayerBoderColor:(UIColor *)layerBoderColor{
    self.layer.borderColor = layerBoderColor.CGColor;
}
@end
