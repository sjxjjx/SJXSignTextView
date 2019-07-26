//
//  SJXSignTextView.h
//  TestDemo
//
//  Created by Sjx on 2019/7/27.
//  Copyright © 2019 zhl. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, TextDirectionType) {
    TextDirectionTypeLeft,
    TextDirectionTypeRight
};

@interface SJXSignTextView : UIView

/** 文字 */
@property(nonatomic, copy) NSString *text;
/** 颜色 */
@property(nonatomic, strong) UIColor *bgColor;
/** 文字颜色 */
@property(nonatomic, strong) UIColor *textColor;
/** 文字大小 */
@property(nonatomic, assign) CGFloat textFont;
/** 方向位置 */
@property(nonatomic, assign) TextDirectionType directionType;

@end

NS_ASSUME_NONNULL_END
