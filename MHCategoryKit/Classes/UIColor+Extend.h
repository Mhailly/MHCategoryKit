//
//  UIColor+Extend.h
//  MHCategory
//
//  Created by Mhailla on 2022/1/13.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (Extend)

/// 十六进制颜色转换
/// @param string 十六进制(以#开头)
+ (UIColor *_Nullable)mh_colorWithHexString:(NSString *_Nullable)string;

/// 十六进制颜色转换
/// @param string 十六进制(以#开头)
/// @param alpha 透明度
+ (UIColor *_Nullable)mh_colorWithHexString:(NSString *_Nullable)string alpha:(float)alpha;

@end

NS_ASSUME_NONNULL_END
