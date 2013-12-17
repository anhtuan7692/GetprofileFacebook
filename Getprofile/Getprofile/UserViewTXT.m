//
//  UserViewTXT.m
//  Getprofile
//
//  Created by AnhTuan on 12/16/13.
//  Copyright (c) 2013 Trần Anh Tuấn. All rights reserved.
//

#import "UserViewTXT.h"

@interface UserViewTXT ()

@end

@implementation UserViewTXT

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

    [self setTitle:@"List Profile Save"];
    //    NSString *filepath = [[NSString alloc] init];
    //    filepath = [filepath stringByAppendingFormat:@"/Users/anhtuan7692/Library/Application Support/iPhone Simulator/6.1/Applications/5A0A7197-F558-4B00-B330-F8B8C5F4FB4B/Documents/christina.txt"];
    
    NSString *documentsDirectory = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];//@"/Users/sunnet/Desktop/dulieu/profile";//
    children = [[NSMutableArray alloc] initWithArray:[[NSFileManager defaultManager] contentsOfDirectoryAtPath:documentsDirectory error:nil]];
    for (NSString *filename in children)
    {
        NSError *error;
        NSString *fileContents = [NSString stringWithContentsOfFile:
                                  [NSString stringWithFormat:@"%@/%@",documentsDirectory,filename]
                                                           encoding:NSUTF8StringEncoding error:&error];
        
        NSArray *listArray = [fileContents componentsSeparatedByString:@"\n"];
        if (listArray) {
            count++;
        }
    }

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
- (void)viewWillAppear:(BOOL)animated
{
    [self setTitle:@"List Profile Save"];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        
        NSString *filename = [children objectAtIndex:dem];
        
        NSString *documentsDirectory = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];//@"/Users/sunnet/Desktop/dulieu/profile";//
       // NSLog(@"%@",documentsDirectory);
        NSError *error;
        NSString *fileContents = [NSString stringWithContentsOfFile:
                                  [NSString stringWithFormat:@"%@/%@",documentsDirectory,filename]
                                                           encoding:NSUTF8StringEncoding error:&error];
        
        NSArray *listArray = [fileContents componentsSeparatedByString:@"\n"];
        while (!listArray) {
            [children removeObjectAtIndex:dem];
            NSString *filename = [children objectAtIndex:dem];
          //  NSLog(@"%@",filename);
            NSString *documentsDirectory = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];
            NSError *error;
            NSString *fileContents = [NSString stringWithContentsOfFile:
                                      [NSString stringWithFormat:@"%@/%@",documentsDirectory,filename]
                                                               encoding:NSUTF8StringEncoding error:&error];
            
            listArray = [fileContents componentsSeparatedByString:@"\n"];
        }
        
        
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
        if (listArray) {
            cell.imageView.image = [UIImage imageWithContentsOfFile:[listArray objectAtIndex:([listArray count] - 1)]];
            cell.textLabel.text = [listArray objectAtIndex:([listArray count] - 3)];
            dem++;
        }
    }
    
    // Configure the cell...
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

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *filename = [children objectAtIndex:indexPath.row];
    NSLog(@"%@",filename);
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
  //  NSString *uname = @
            [defaults setObject:filename forKey:@"TENFILE"];
            //[defaults setInteger:sobanluu forKey:@"SOBANLUU"];
            [defaults synchronize];
      //  int sobanluu = [defaults integerForKey:@"SOBANLUU"];
    //    NSString *ageString = [NSString stringWithFormat:@"%@",self.Uname.text];
    //    NSLog(@"So ban luu truoc: %i",sobanluu);
    //    BOOL daco = false;
    //    for (int i = 1;i<=sobanluu;i++) {
    //        NSString *una = [NSString stringWithFormat:@"USERNAME%i",i];
    //        NSString *username = [defaults objectForKey:una];
    [self setTitle:@"Back"];
     ViewProfile * tbv = [[ViewProfile alloc] init];
     [[self navigationController] pushViewController:tbv animated:YES];
    //[self.view addSubview:tbv.view];
}

@end
