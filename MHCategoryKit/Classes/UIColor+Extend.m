//
//  UIColor+Extend.m
//  MHCategory
//
//  Created by Mhailla on 2022/1/13.
//

#import "UIColor+Extend.h"

@implementation UIColor (Extend)

/// 十六进制颜色转换
+ (UIColor *)mh_colorWithHexString:(NSString *_Nullable)string {
    return [UIColor mh_colorWithHexString:string alpha:1.0f];
}

/// 十六进制颜色转换
+ (UIColor *_Nullable)mh_colorWithHexString:(NSString *_Nullable)string alpha:(float)alpha {
    NSString *cString = [[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    if ([cString length] < 6) {
        return [UIColor clearColor];
    }
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"]) cString = [cString substringFromIndex:1];
    if ([cString length] != 6) return [UIColor clearColor];
    NSRange range;
    range.length = 2;
    range.location = 0;
    NSString *rString = [cString substringWithRange:range];
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    return [UIColor colorWithRed:((float)r / 255.0f) green:((float)g / 255.0f) blue:((float)b / 255.0f) alpha:alpha];
}

@end
