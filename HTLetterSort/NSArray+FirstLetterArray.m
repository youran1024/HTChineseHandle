//
//  NSArray+FirstLetterArray.m
//  LetterDescent
//
//  Created by Mr.Yang on 13-8-20.
//  Copyright (c) 2013年 Hunter. All rights reserved.
//

#import "NSArray+FirstLetterArray.h"
#import "pinyin.h"

@implementation NSArray (FirstLetterArray)
/*
- (NSDictionary *)sortedArrayUsingFirstLetter
{
    NSMutableDictionary *mutDic = [NSMutableDictionary dictionary];
    const char *letterPoint = NULL;
    NSString *firstLetter = nil;
    for (NSString *str in self) {
        
        //检查 str 是不是 NSString 类型
        if (![str isKindOfClass:[NSString class]]) {
            assert(@"object in array is not NSString");
#ifdef DEBUG
            NSLog(@"object in array is not NSString, it's [%@]", NSStringFromClass([str class]));
#endif
            continue;
        }
        
        letterPoint = [str UTF8String];

        //如果开头不是大小写字母则读取 首字符
        if (!(*letterPoint > 'a' && *letterPoint < 'z') &&
            !(*letterPoint > 'A' && *letterPoint < 'Z')) {
            
            //汉字或其它字符
            char letter = pinyinFirstLetter([str characterAtIndex:0]);
            letterPoint = &letter;
            
        }
        //首字母转成大写
        firstLetter = [[NSString stringWithFormat:@"%c", *letterPoint] uppercaseString];
        
        //首字母所对应的 姓名列表
        NSMutableArray *mutArray = [mutDic objectForKey:firstLetter];
        
        if (mutArray == nil) {
            mutArray = [NSMutableArray array];
            [mutDic setObject:mutArray forKey:firstLetter];
        }
        
        [mutArray addObject:str];
    }
    
    //字典是无序的，数组是有序的，
    //将数组排序
    for (NSString *key in [mutDic allKeys]) {
        NSArray *nameArray = [[mutDic objectForKey:key] sortedArrayUsingSelector:@selector(compare:)];
        [mutDic setValue:nameArray forKey:key];
    }
    
    return mutDic;
}
*/

- (NSDictionary *)sortedArrayUsingFirstLetter
{
    return [self sortArrayUsingFirstLetterWithNameKey:nil];
}

- (NSDictionary *)sortArrayUsingFirstLetterWithNameKey:(NSString *)userNameKey
{
    NSMutableDictionary *mutDic = [NSMutableDictionary dictionary];
    const char *letterPoint = NULL;
    NSString *firstLetter = nil;
    for (id obj in self) {
        
        NSString *name;
        if ([obj isKindOfClass:[NSDictionary class]]) {
            if (!userNameKey) {
                NSAssert(userNameKey == nil, @"key值不能为nil");
                return nil;
            }
            
            name = [obj objectForKey:userNameKey];
        }else {
            //  是字符串
            name = obj;
        }

        //检查 str 是不是 NSString 类型
        if (![name isKindOfClass:[NSString class]]) {
            assert(@"object in array is not NSString");
#ifdef DEBUG
            NSLog(@"object in array is not NSString, it's [%@]", NSStringFromClass([name class]));
#endif
            continue;
        }
        
        letterPoint = [name UTF8String];
        
        //如果开头不是大小写字母则读取 首字符
        if (!(*letterPoint > 'a' && *letterPoint < 'z') &&
            !(*letterPoint > 'A' && *letterPoint < 'Z')) {
            
            //汉字或其它字符
            char letter = pinyinFirstLetter([name characterAtIndex:0]);
            letterPoint = &letter;
            
        }
        //首字母转成大写
        firstLetter = [[NSString stringWithFormat:@"%c", *letterPoint] uppercaseString];
        
        //首字母所对应的 姓名列表
        NSMutableArray *mutArray = [mutDic objectForKey:firstLetter];
        
        if (mutArray == nil) {
            mutArray = [NSMutableArray array];
            [mutDic setObject:mutArray forKey:firstLetter];
        }
        
        [mutArray addObject:obj];
    }
    
    //将数组排序
    for (NSString *key in [mutDic allKeys]) {
        NSArray *objArray = [mutDic objectForKey:key];
        [objArray sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            
            if ([obj1 isKindOfClass:[NSString class]]) {
                return [obj1 compare:obj2];
            }
            
            NSString *name1 = [obj1 objectForKey:userNameKey];
            NSString *name2 = [obj1 objectForKey:userNameKey];
            
            return [name1 compare:name2];
        }];
        
        [mutDic setValue:objArray forKey:key];
    }
    
    return mutDic;
}

@end
