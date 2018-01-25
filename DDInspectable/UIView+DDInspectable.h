//
//  UIView+DDInspectable.h
//
//  Created by dd2333 on 2017/11/23.
//  Copyright © 2017年 dd2333. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (DDInspectable)

@property (nonatomic, strong) IBInspectable UIColor *borderColor;
@property (nonatomic, assign) IBInspectable float borderWidth;
@property (nonatomic, assign) IBInspectable float cornerRadius;

@end

@interface UITextField (DDInspectable)

@property (nonatomic, strong) IBInspectable UIColor *placeholderColor;

@end

@interface UIButton (DDInspectable)

@property (nonatomic, strong) IBInspectable UIColor *defaultBackgroundColor;
@property (nonatomic, strong) IBInspectable UIColor *highlightedBackgroundColor;
@property (nonatomic, strong) IBInspectable UIColor *selectedBackgroundColor;
@property (nonatomic, strong) IBInspectable UIColor *disabledBackgroundColor;

@end
