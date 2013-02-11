//
//  NewsTableViewController.m
//  NewsReader
//
//  Created by Constantin Botnari on 13-02-10.
//  Copyright (c) 2013 Constantin Botnari. All rights reserved.
//

#import "NewsTableViewController.h"
#import "NewsJSON.h"
#import "NewsItem.h"
#import "ItemViewController.h"

@interface NewsTableViewController ()

@end

@implementation NewsTableViewController

@synthesize tblDataSource;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    NewsJSON * json = [[NewsJSON alloc]init];
    tblDataSource = [json getNewsFromUrl:@"https://raw.github.com/Botnary/NewsReader/master/NewsReader/news-test.json"];
    [json release];
    self.title = @"News";
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
    return tblDataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if(!cell){
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    // Configure the cell...
    NewsItem *item = [tblDataSource objectAtIndex:indexPath.row];
    cell.textLabel.text = item.headline;
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

//This doesnt work with the storyboards, but with XIB fiels only
/*
#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    ItemViewController *detailVC = [[ItemViewController alloc]init];
    //datailVC.webContainer.loadHTMLString = @"";
    NewsItem *item = [tblDataSource objectAtIndex:indexPath.row];
    NSString *body = [[NSString alloc]initWithFormat:@"<h1>@%@</h1><p>@%@</p><p>@%@</p>",item.headline,item.description, item.content];
    [detailVC.webContainer loadHTMLString:body baseURL:[NSURL URLWithString:@"#"]];
    [self.navigationController pushViewController:detailVC animated:YES];
    [detailVC release];
    [body release];
    [item release];
}
*/

//This delegate works with sotryboard, and implements the prepareForSegue

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //create a index path
    NSIndexPath *path = [self.tableView indexPathForSelectedRow];
    NewsItem *item = [tblDataSource objectAtIndex:path.row];
    ItemViewController *detailVC = [[ItemViewController alloc]initWithNewsItem:item];
    //connect this view controller with the segue
    detailVC = [segue destinationViewController];
    detailVC.newsItem = item;
    //[detailVC release];
    //[body release];
    //[item release];
}
@end
