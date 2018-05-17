# UIViewCategory
这里给大家分享我自己写的一个工具类

先简单介绍下这个工具类是干嘛的 = =

对于使用Xib和Storyboard进行开发的同学来说是一个不错的选择！！！！
因为导入这个工具类后再也不用在代码里设置 layer的cornerRadius、masksToBounds、borderWidth、borderColor
属性了，直接在Xib或者Storyboard里就能设置了。

![image](https://github.com/wangxihu/UIViewCategory/blob/master/UIViewCategory/jietu.png?raw=true)

##.m代码：

@implementation UIView (CornerRadius)
- (void)setCornerRadius:(CGFloat)cornerRadius{
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

