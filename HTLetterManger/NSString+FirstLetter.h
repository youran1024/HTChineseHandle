//
//  NSString+FirstLetter.h
//  HTLetterManger
//
//  Created by Mr.Yang on 13-8-25.
//  Copyright (c) 2013年 Hunter. All rights reserved.
//

#define ALL_LETTER_ISAVAILABLE  1

#import <Foundation/Foundation.h>

//为了减少内存就占用，如无必要，不要使用此函数
#if ALL_LETTER_ISAVAILABLE

#import "POAPinyin.h"

#endif



@interface NSString (FirstLetter)

- (NSString *)firstLetter;

- (NSString *)firstLetters;

#if ALL_LETTER_ISAVAILABLE

- (NSString *)allLetters;

#endif

@end
