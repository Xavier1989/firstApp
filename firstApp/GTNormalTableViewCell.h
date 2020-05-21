//
//  GTNormalTableViewCell.h
//  firstApp
//
//  Created by 谢添 on 2020/5/20.
//  Copyright © 2020 xavier. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol GTNormalTableViewCellDelegate <NSObject>
- (void)tableViewCell:(UITableViewCell *)tableViewCell clickDeleteButton:(UIButton *)deleteButton;
@end

@interface GTNormalTableViewCell : UITableViewCell
@property(nonatomic, weak, readwrite) id<GTNormalTableViewCellDelegate> delegate;
- (void)layoutTableViewCell;
@end

NS_ASSUME_NONNULL_END
