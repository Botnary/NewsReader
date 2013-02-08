//
//  NewsListViewController.h
//  NewsReader
//
//  Created by Constantin Botnari on 13-02-06.
//  Copyright (c) 2013 Constantin Botnari. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "ShowItemViewController.h"

@interface NewsListViewController : UIViewController<UITableViewDelegate, UITableViewDataSource,ShowItemViewControllerDelegate>{
    IBOutlet UITableView *tblSimpleTable;
    NSMutableArray *tblDataSource;
}
@property (assign) UITableView *tblSimpleTable;
@property (assign) NSMutableArray *tblDataSource;

-(id)initWithNewsList:(NSMutableArray *)theNewsList;
@end
