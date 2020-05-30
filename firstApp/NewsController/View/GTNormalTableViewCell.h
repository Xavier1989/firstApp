//
//  GTNormalTableViewCell.h
//  firstApp
//
//  Created by 谢添 on 2020/5/20.
//  Copyright © 2020 xavier. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class GTListItem;

///  点击删除按钮
@protocol GTNormalTableViewCellDelegate <NSObject>
- (void)tableViewCell:(UITableViewCell *)tableViewCell clickDeleteButton:(UIButton *)deleteButton;
@end


/// 新闻列表cell
@interface GTNormalTableViewCell : UITableViewCell

@property(nonatomic, weak, readwrite) id<GTNormalTableViewCellDelegate> delegate;


- (void)layoutTableViewCellWithItem:(GTListItem *)item;
@end

NS_ASSUME_NONNULL_END
