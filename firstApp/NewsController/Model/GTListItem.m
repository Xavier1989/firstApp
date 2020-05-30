//
//  GTListItem.m
//  firstApp
//
//  Created by 谢添 on 2020/5/30.
//  Copyright © 2020 xavier. All rights reserved.
//

#import "GTListItem.h"

@implementation GTListItem
- (void)configWithDictionary:(NSDictionary *)dictionary {
#warning 类型是否匹配额
    self.category = [dictionary objectForKey:@"category"];
    self.picUrl = [dictionary objectForKey:@"thumbnail_pic_s"];
    self.uniqueKey = [dictionary objectForKey:@"uniquekey"];
    self.title = [dictionary objectForKey:@"title"];
    self.date = [dictionary objectForKey:@"date"];
    self.authorName = [dictionary objectForKey:@"author_name"];
    self.articleUrl = [dictionary objectForKey:@"url"];
}

@end
