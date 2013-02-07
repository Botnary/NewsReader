//
//  NewsListViewController.m
//  NewsReader
//
//  Created by Constantin Botnari on 13-02-06.
//  Copyright (c) 2013 Constantin Botnari. All rights reserved.
//

#import "NewsListViewController.h"
#import "NewsItem.h"
#import "ShowItemViewController.h"

@interface NewsListViewController ()

@end

@implementation NewsListViewController
@synthesize tblDataSource;

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
    // Do any additional setup after loading the view from its nib.
    NSMutableArray *list = [[NSMutableArray alloc]initWithObjects:[[NewsItem alloc]initWith:@"Hello word" :@"test description" :@"Test content"],[[NewsItem alloc]initWith:@"Hello word 2" :@"test description 2" :@"Test content 2"], nil];
    tblDataSource = list;
    NSLog(@"@%d",[tblDataSource count]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    NSLog(@"@%d",[tblDataSource count]);
    return [tblDataSource count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
    NewsItem *item = [tblDataSource objectAtIndex:indexPath.row];
    cell.textLabel.text = [item headline];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    ShowItemViewController *showItem = [[ShowItemViewController alloc]initWithNewsItem:[tblDataSource objectAtIndex:indexPath.row]];
    showItem.delegate = self;
    [[self view]addSubview:showItem.view];
    NSLog(@"@%d",indexPath.row);
}

-(void) closeView:(ShowItemViewController *)theController{
    [theController.view removeFromSuperview];
    NSLog(@"Working");
}

@end
