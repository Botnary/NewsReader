//
//  AppDelegate.m
//  NewsReader
//
//  Created by Constantin Botnari on 13-02-05.
//  Copyright (c) 2013 Constantin Botnari. All rights reserved.
//

#import "AppDelegate.h"
#include "ViewController.h"
#include "NewsListViewController.h"

@implementation AppDelegate
@synthesize myTimer,jsonReader;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
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
//    UIAlertView *alert = [[UIAlertView alloc]
//                          initWithTitle: @"Announcement"
//                          message: @"It turns out that you are playing Addicus!"
//                          delegate: nil
//                          cancelButtonTitle:@"OK"
//                          otherButtonTitles:nil];
//    [alert show];
//    [alert release];
    //NewsListViewController *nsList = [[NewsListViewController alloc]init];
//    [[self window]addSubview:[nsList view]];
    jsonReader = [[NewsJSON alloc]init];
    NSMutableArray *list = [jsonReader newsList:@"https://raw.github.com/Botnary/NewsReader/master/NewsReader/news-test.json"];
    if(!list){
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle: @"Error"
                              message: @"Failed to read data from news server"
                              delegate: self
                              cancelButtonTitle:@"Cancel"
                              otherButtonTitles:@"Retry",nil];
        
        [alert show];
        [alert release];
    }else{
        //NSLog(@"@%@",list);
        NewsListViewController *nsList = [[NewsListViewController alloc]initWithNewsList:list];
        [[self window]addSubview:[nsList view]];
    }
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
	if (buttonIndex == 0) {
		NSLog(@"user pressed OK");
	}
	else {
		NSLog(@"user pressed Cancel");
	}
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    
}

@end
