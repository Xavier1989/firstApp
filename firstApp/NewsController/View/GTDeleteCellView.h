//
//  GTDeleteCellView.h
//  firstApp
//
//  Created by 谢添 on 2020/5/21.
//  Copyright © 2020 xavier. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/// 删除 Cell 确认浮层
@interface GTDeleteCellView : UIView

/// 点击出现删除 Cell 确认浮层
/// @param point 点击的位置
/// @param clickBlock 点击后的操作
-(void)showDeleteViewFromPoint:(CGPoint)point clickBlock:(dispatch_block_t) clickBlock;
@end

NS_ASSUME_NONNULL_END
