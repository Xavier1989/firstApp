//
//  GTListLoader.h
//  firstApp
//
//  Created by 谢添 on 2020/5/29.
//  Copyright © 2020 xavier. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GTListItem;

NS_ASSUME_NONNULL_BEGIN

typedef void(^GTListLoaderFinishBlock)(BOOL success, NSArray<GTListItem *> *dataArray);

/// 列表请求
@interface GTListLoader : NSObject

- (void) loadListDataWithFinishBlock:(GTListLoaderFinishBlock)finishBlock;
@end

NS_ASSUME_NONNULL_END
