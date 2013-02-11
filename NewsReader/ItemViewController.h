//
//  ItemViewController.h
//  NewsReader
//
//  Created by Constantin Botnari on 13-02-10.
//  Copyright (c) 2013 Constantin Botnari. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewsItem.h"

@interface ItemViewController : UIViewController{
    IBOutlet UIWebView *webContainer;
}

@property (retain, nonatomic) IBOutlet UIWebView *webContainer;
@property (retain, nonatomic) NewsItem *newsItem;

-(id)initWithNewsItem:(NewsItem *)theNewsItem;
@end
