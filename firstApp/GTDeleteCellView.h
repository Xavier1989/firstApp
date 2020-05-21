//
//  GTDeleteCellView.h
//  firstApp
//
//  Created by 谢添 on 2020/5/21.
//  Copyright © 2020 xavier. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GTDeleteCellView : UIView
-(void)showDeleteViewFromPoint:(CGPoint)point clickBlock:(dispatch_block_t) clickBlock;
@end

NS_ASSUME_NONNULL_END
