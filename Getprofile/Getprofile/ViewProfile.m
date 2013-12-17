//
//  ViewProfile.m
//  Getprofile
//
//  Created by AnhTuan on 12/17/13.
//  Copyright (c) 2013 Trần Anh Tuấn. All rights reserved.
//

#import "ViewProfile.h"

@interface ViewProfile ()

@end

@implementation ViewProfile

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
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    //  int sobanluu = [defaults integerForKey:@"SOBANLUU"];

    NSString *filename = [defaults stringForKey:@"TENFILE"];
    NSLog(@"%@",filename);
    NSString *documentsDirectory = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];//@"/Users/sunnet/Desktop/dulieu/profile";//
  
    NSError *error;
    NSString *fileContents = [NSString stringWithContentsOfFile:
                              [NSString stringWithFormat:@"%@/%@",documentsDirectory,filename]
                                                       encoding:NSUTF8StringEncoding error:&error];
      NSLog(@"%@",fileContents);
    NSArray *listArray = [fileContents componentsSeparatedByString:@"\n"];
    
    [self setTitle:[listArray objectAtIndex:([listArray count] - 4)]];
    
    self.imageAvatar.image = [UIImage imageWithContentsOfFile:[listArray objectAtIndex:([listArray count] - 2)]];
    self.name.text = [listArray objectAtIndex:([listArray count] - 4)];
    self.link.text = [listArray objectAtIndex:([listArray count] - 3)];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_imageAvatar release];
    [_name release];
    [_idUser release];
    [_fName release];
    [_lName release];
    [_gender release];
    [_username release];
    [_local release];
    [_link release];
    [super dealloc];
}
@end
