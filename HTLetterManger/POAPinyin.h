//
//  POAPinyin.h
//  POA
//
//  Created by haung he on 11-7-18.
//  Copyright 2011年 huanghe. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface POAPinyin : NSObject

//输入中文，返回全拼。
+ (NSString *) Convert:(NSString *) hzString;

@end
