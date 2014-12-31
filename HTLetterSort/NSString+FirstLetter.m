//
//  NSString+FirstLetter.m
//  HTLetterManger
//
//  Created by Mr.Yang on 13-8-25.
//  Copyright (c) 2013年 Hunter. All rights reserved.
//

#import "NSString+FirstLetter.h"
#import "pinyin.h"

@implementation NSString (FirstLetter)

- (NSString *)firstLetter
{
    return [HTFirstLetter firstLetter:self];
}

- (NSString *)firstLetters
{
    return [HTFirstLetter firstLetters:self];
}

//为了减少内存就占用，如无必要，不要使用此函数
#if ALL_LETTER_ISAVAILABLE

- (NSString *)allLetters
{
    return [POAPinyin Convert:self];
}

#endif

@end
