//
//  GTListItem.h
//  firstApp
//
//  Created by 谢添 on 2020/5/30.
//  Copyright © 2020 xavier. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 列表结构化数据
@interface GTListItem : NSObject

@property(nonatomic,copy,readwrite)NSString *category;
@property(nonatomic,copy,readwrite)NSString *picUrl;
@property(nonatomic,copy,readwrite)NSString *uniqueKey;
@property(nonatomic,copy,readwrite)NSString *title;
@property(nonatomic,copy,readwrite)NSString *date;
@property(nonatomic,copy,readwrite)NSString *authorName;
@property(nonatomic,copy,readwrite)NSString *articleUrl;

- (void)configWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
