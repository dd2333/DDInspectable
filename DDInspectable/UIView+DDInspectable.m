//
//  UIView+DDInspectable.m
//
//  Created by dd2333 on 2017/11/23.
//  Copyright © 2017年 dd2333. All rights reserved.
//

#import "UIView+DDInspectable.h"

@interface Tools : NSObject

@end

@implementation Tools

+ (UIImage*)imageWithColor:(UIColor *)color size:(CGSize)size{
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end

@implementation UIView (DDInspectable)

- (UIColor *)borderColor{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor{
    self.layer.borderColor = borderColor.CGColor;
}

- (float)borderWidth{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(float)borderWidth{
    self.layer.borderWidth = borderWidth;
}

- (float)cornerRadius{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(float)cornerRadius{
    self.layer.cornerRadius = cornerRadius;
}

@end

@implementation UITextField (DDInspectable)

- (UIColor *)placeholderColor{
    NSDictionary *attribute = [self.attributedPlaceholder attributesAtIndex:0 effectiveRange:nil];
    return attribute[@"NSColor"];
}

- (void)setPlaceholderColor:(UIColor *)placeholderColor{
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc]initWithString:self.placeholder];
    [attrStr addAttribute:NSForegroundColorAttributeName value:placeholderColor range:NSMakeRange(0, self.placeholder.length)];
    self.attributedPlaceholder = attrStr;
}

@end

@implementation UIButton (DDInspectable)

- (UIColor *)defaultBackgroundColor{
    return [UIColor whiteColor];
}

- (void)setDefaultBackgroundColor:(UIColor *)defaultBackgroundColor{
    UIImage *img = [Tools imageWithColor:defaultBackgroundColor size:CGSizeMake(6, 6)];
    [self setBackgroundImage:img forState:UIControlStateNormal];
}

- (UIColor *)highlightedBackgroundColor{
    return [UIColor whiteColor];
}

- (void)setHighlightedBackgroundColor:(UIColor *)highlightedBackgroundColor{
    UIImage *img = [Tools imageWithColor:highlightedBackgroundColor size:CGSizeMake(6, 6)];
    [self setBackgroundImage:img forState:UIControlStateHighlighted];
}

- (UIColor *)selectedBackgroundColor{
    return [UIColor whiteColor];
}

- (void)setSelectedBackgroundColor:(UIColor *)selectedBackgroundColor{
    UIImage *img = [Tools imageWithColor:selectedBackgroundColor size:CGSizeMake(6, 6)];
    [self setBackgroundImage:img forState:UIControlStateSelected];
}

- (UIColor *)disabledBackgroundColor{
    return [UIColor whiteColor];
}

- (void)setDisabledBackgroundColor:(UIColor *)disabledBackgroundColor{
    UIImage *img = [Tools imageWithColor:disabledBackgroundColor size:CGSizeMake(6, 6)];
    [self setBackgroundImage:img forState:UIControlStateDisabled];
}
@end
