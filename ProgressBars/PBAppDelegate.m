//
//  PBAppDelegate.m
//  ProgressBars
//
//  Created by Ming-Zhe on 14-5-2.
//  Copyright (c) 2014年 Ming-Zhe. All rights reserved.
//

#import "PBAppDelegate.h"
#import "PBViewController.h"

@implementation PBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [PBViewController new];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
