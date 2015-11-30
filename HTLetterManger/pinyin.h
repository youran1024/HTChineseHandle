/*
 *  pinyin.h
 *  Chinese Pinyin First Letter
 *
 *  Created by George on 4/21/10.
 *  Copyright 2010 RED/SAFI. All rights reserved.
 *
 */

char pinyinFirstLetter(unsigned short hanzi);


@interface NSString (FirstLetter)

//  获取第一个汉字拼音首字母
- (NSString *)firstLetter;

//  获取所有汉字拼音首字母
- (NSString *)firstLetters;

@end


@interface NSArray (FirstLetterArray)

/**
 *	通过需要按【首字母分类】的 【姓名数组】 调用此函数
 *
 *	@return	A：以a打头的姓名或者单词
    B：以b打头的姓名或者单词
 */

- (NSDictionary *)sortedArrayUsingFirstLetter;
- (NSDictionary *)sortedArrayUsingFirstLetterByKeypath:(NSString *)keyPath;

@end


@interface HTFirstLetter : NSObject

//获取汉字首字母，如果参数既不是汉字也不是英文字母，则返回 @“#”
+ (NSString *)firstLetter:(NSString *)chineseString;

//返回参数中所有汉字的首字母，遇到其他字符，则用 # 替换
+ (NSString *)firstLetters:(NSString *)chineseString;

@end