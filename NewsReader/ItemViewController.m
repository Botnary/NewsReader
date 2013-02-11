//
//  ItemViewController.m
//  NewsReader
//
//  Created by Constantin Botnari on 13-02-10.
//  Copyright (c) 2013 Constantin Botnari. All rights reserved.
//

#import "ItemViewController.h"

@interface ItemViewController ()

@end

@implementation ItemViewController

@synthesize webContainer,newsItem;

-(id)initWithNewsItem:(NewsItem *)theNewsItem{
    self.newsItem = theNewsItem;
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSString *body = [[NSString alloc]initWithFormat:@"<h1>%@</h1><p>%@</p><p>%@</p>",newsItem.headline,newsItem.description, newsItem.content];
    [webContainer loadHTMLString:body baseURL:[NSURL URLWithString:@"#"]];
    self.title = newsItem.headline;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [webContainer release];
    [super dealloc];
}
@end
