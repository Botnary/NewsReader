//
//  ShowItemViewController.m
//  NewsReader
//
//  Created by Constantin Botnari on 13-02-06.
//  Copyright (c) 2013 Constantin Botnari. All rights reserved.
//

#import "ShowItemViewController.h"

@interface ShowItemViewController ()

@end

@implementation ShowItemViewController

@synthesize headline,content,newsIntem;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(id)initWithNewsItem:(NewsItem *)theNewsItem{
    self.newsIntem = theNewsItem;
    return self;
}

- (void)handleCloseButton:(id)sender {
    // Our delegate method is optional, so we should
    // check that the delegate implements it
    if ([self.delegate respondsToSelector:@selector(closeView:)]) {
        [self.delegate closeView:self];
        NSLog(@"Clicked inside call done");
    }
    NSLog(@"Clicked inside");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [headline setText:[newsIntem headline]];
    [content setText:[newsIntem content]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
