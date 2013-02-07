//
//  ShowItemViewController.h
//  NewsReader
//
//  Created by Constantin Botnari on 13-02-06.
//  Copyright (c) 2013 Constantin Botnari. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "NewsItem.h"

@protocol ShowItemViewControllerDelegate;

@interface ShowItemViewController : UIViewController{
    IBOutlet UILabel *headline;
    IBOutlet UITextView *content;
    NewsItem *newsIntem;
}

@property (assign) UILabel *headline;
@property (assign) UITextView *content;
@property (assign) NewsItem *newsIntem;
@property (nonatomic, assign) id<ShowItemViewControllerDelegate> delegate;

-(id)initWithNewsItem:(NewsItem *)theNewsItem;
- (IBAction)handleCloseButton:(id)sender;

@end

@protocol ShowItemViewControllerDelegate<NSObject>
-(void) closeView:(ShowItemViewController *)theController;
@end
