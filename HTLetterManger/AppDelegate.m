//
//  AppDelegate.m
//  HTLetterManger
//
//  Created by Mr.Yang on 13-8-25.
//  Copyright (c) 2013年 Hunter. All rights reserved.
//

#import "AppDelegate.h"
#import "pinyin.h"

@interface UserInfo : NSObject
@property (nonatomic, strong)   UserInfo *userInfo;
@property (nonatomic, assign)   int userId;
@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *userSex;
@property (nonatomic, copy) NSString *userLocation;

@end

@implementation UserInfo


@end



@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    UIViewController *rootViewController = [[UIViewController alloc] init];
    self.window.rootViewController = rootViewController;
    
    
    // -------------------- Method 1
    
    NSString *chinese = @"杨";
    
    NSString *firstLetter = [chinese firstLetter];
    printf("firstLetter:%s", [firstLetter UTF8String]);
    
    
    // -------------------- Method 2
    
    NSArray *array = @[@"sfes", @"sfdfs", @"wang", @"join", @"张小华", @"张晓乐", @"张喜浩", @"杨万里", @"yang", @"孙晓"];
    
    //获取首字符
    NSDictionary *dic = [array sortedArrayUsingFirstLetter];
    //因为字典的无序，将所有的key取出来之后，重新输出
    NSArray *keys = [[dic allKeys] sortedArrayUsingSelector:@selector(compare:)];
    
    for (NSString *key in keys) {
        
        NSArray *array = [dic objectForKey:key];
        
        printf("\n%s:\n", [key UTF8String]);
        
        for (NSString *str1 in array) {
            printf("  %s\n", [str1 UTF8String]);
        }
        
    }

    // -------------------- Method 3
    
    NSMutableArray *dictArray = [NSMutableArray array];
    for (NSString *name in array) {
        
        NSInteger index = [array indexOfObject:name];
        NSDictionary *userInfo = @{@"sex": @"男", @"name":name, @"index":@(index)};
        
        [dictArray addObject:userInfo];
    }
    
    //获取首字符
    NSDictionary *dictDict = [dictArray sortedArrayUsingFirstLetterByKeypath:@"name"];
    
    NSLog(@"dictArray:%@", dictDict);
    
    // -------------------- Method 4
    
    NSMutableArray *modelArray = [NSMutableArray array];
    for (int i = 0; i < array.count; i++) {
        NSString *userName = array[i];
        UserInfo *userInfo = [[UserInfo alloc] init];
        userInfo.userName = userName;
        userInfo.userSex = @"famel";
        userInfo.userLocation = @"北京";
        userInfo.userId = i;
        
        UserInfo *userInfo1 = [[UserInfo alloc] init];
        userInfo.userInfo = userInfo1;
        userInfo1.userName = userName;
        [modelArray addObject:userInfo];
    }
    
    NSDictionary *modelDict = [modelArray sortedArrayUsingFirstLetterByKeypath:@"userInfo.userName"];
    
    NSLog(@"modelArray:%@", modelDict);
    
    // -------------------- Method 5
    NSString * str = @"sdf获取汉字首字母，如果参数既不是汉字也不是英文字母，则返回 @“#”";
    //获取首字符
    printf("获取首字符：%s \n", [[str firstLetter] UTF8String]);
    
    //获取所有汉字的首字符
    printf("获取所有汉字的首字符：%s \n", [[str firstLetters] UTF8String]);
    
    return YES;
}



@end
