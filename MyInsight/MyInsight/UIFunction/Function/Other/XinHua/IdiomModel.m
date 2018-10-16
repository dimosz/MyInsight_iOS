//
//  IdiomModel.m
//  MyInsight
//
//  Created by SongMengLong on 2018/7/30.
//  Copyright © 2018年 SongMenglong. All rights reserved.
//

#import "IdiomModel.h"

@implementation IdiomModel

+ (id)modelWithDictionary:(NSDictionary *)dic {
    IdiomModel *model = [[IdiomModel alloc] init];
    [model setValuesForKeysWithDictionary:dic];
    return model;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    
}


@end
