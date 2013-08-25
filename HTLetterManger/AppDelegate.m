//
//  AppDelegate.m
//  HTLetterManger
//
//  Created by Mr.Yang on 13-8-25.
//  Copyright (c) 2013年 Hunter. All rights reserved.
//

#import "AppDelegate.h"
#import "NSArray+FirstLetterArray.h"
#import "NSString+FirstLetter.h"

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
    
    NSArray *array = @[@"sfes", @"sfdfs", @"wang", @"join", @"张小华", @"张晓乐", @"张喜浩", @"杨万里", @"yang", @"孙晓"];
    //获取首字符
    NSDictionary *dic = [array sortedArrayUsingFirstLetter];
    
    NSArray *keys = [[dic allKeys] sortedArrayUsingSelector:@selector(compare:)];
    
    for (NSString *key in keys) {
        
        NSArray *array = [dic objectForKey:key];
        printf("%s:\n", [key UTF8String]);
        
        for (NSString *str1 in array) {
            printf("  %s\n", [str1 UTF8String]);
        }
        
    }
    
    NSString * str = @"sdf获取汉字首字母，如果参数既不是汉字也不是英文字母，则返回 @“#”";
    
    printf("获取首字符：%s \n", [[str firstLetter] UTF8String]);
    printf("获取所有汉字的首字符：%s \n", [[str firstLetters] UTF8String]);
    
    printf("\n");
    printf("%s \n", [[str allLetters] UTF8String]);
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
