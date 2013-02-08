//
//  AppDelegate.h
//  NewsReader
//
//  Created by Constantin Botnari on 13-02-05.
//  Copyright (c) 2013 Constantin Botnari. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "NewsJSON.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    NSTimer * myTimer;
    NewsJSON *jsonReader;
}

@property (strong, nonatomic) UIWindow *window;
@property (strong,nonatomic) NSTimer *myTimer;
@property (strong,nonatomic) NewsJSON *jsonReader;

@end
