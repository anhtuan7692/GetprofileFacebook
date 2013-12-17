//
//  ViewController.m
//  Getprofile
//
//  Created by Trần Anh Tuấn on 12/12/13.
//  Copyright (c) 2013 Trần Anh Tuấn. All rights reserved.
//
#import "tableView.h"
#import "ViewController.h"
NSThread* evtThread;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.iduser setDelegate:self];
    [self setTitle:@"Get Profile Facebook"];
    self.vuilongdoi.text = @"";
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewWillAppear:(BOOL)animated
{
     [self setTitle:@"Get Profile Facebook"];
}// Called when the view is about to made visible. Default does nothing
- (void)viewDidAppear:(BOOL)animated{
    
}

- (void)dealloc {
    [_iduser release];
    [_ID release];
    [_Name release];
    [_FName release];
    [_Lname release];
    [_Gender release];
    [_locale release];
    [_Uname release];
    [_link release];
    [_View1 release];
    [_avatar release];
    [_vuilongdoi release];
    [_tableView release];
    [super dealloc];
}
- (IBAction)go:(id)sender {
  //  NSString *dir = @"/Users/anhtuan7692/Library/Application Support/iPhone Simulator/6.1/Applications/5A0A7197-F558-4B00-B330-F8B8C5F4FB4B/Documents/";
//    
//   NSString *dir = @"/Users/anhtuan7692/Desktop/items/";
//    
//    
//    NSArray *children = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:dir error:nil];
//    NSString *string = [[NSString alloc] init ];
//    for (NSString *filename in children)
//    { 
//      //  NSLog(@"%@", filename);
//        string = [string stringByAppendingFormat:@"\"%@\",\n", filename];
//    }
//    NSError *error1;
//    NSString *filePath = @"/Users/anhtuan7692/Desktop/data.txt";    
//    
//    [string writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:&error1];
    
    
    
//     NSString *documentsDirectory = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];
//    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"/Users/anhtuan7692/Library/Application Support/iPhone Simulator/6.1/Applications/5A0A7197-F558-4B00-B330-F8B8C5F4FB4B/Documents/"
//                                                         ofType:@"txt"];
//    NSLog(@"filePath: %@", filePath);
//     NSLog(@"filePath1: %@", documentsDirectory);
//    NSString *fileString = [NSString stringWithContentsOfFile:filePath];
//    NSLog(@"fileString: %@", fileString);
//    
//    NSArray *lines = [fileString componentsSeparatedByString:@"\n"];
//    NSLog(@"arrayLines: %@", lines);
    
//    
//    NSString *filepath = [[NSString alloc] init];
//     filepath = [filepath stringByAppendingFormat:@"/Users/anhtuan7692/Library/Application Support/iPhone Simulator/6.1/Applications/5A0A7197-F558-4B00-B330-F8B8C5F4FB4B/Documents/christina.txt"];
//   
//    NSError *error;
//    NSString *fileContents = [NSString stringWithContentsOfFile:filepath encoding:NSUTF8StringEncoding error:&error];
//    
//  //  if (error)
//       // NSLog(@"Error reading file: %@", error.localizedDescription);
//    
//    // maybe for debugging...
//    //NSLog(@"contents: %@", fileContents);
//    
//    NSArray *listArray = [fileContents componentsSeparatedByString:@"\n"];
//    for (int i=0;i<10;i++) {
//         NSLog(@"list: %@", listArray[i]);
//    }
   
    //NSLog(@"items = %d", [listArray count]);
    
    
    
    if ([self.iduser.text isEqual: @""] || self.iduser.text==NULL) {
        self.vuilongdoi.text = @"Có lỗi vui lòng nhập lại.";
        return;
    }
    [self.iduser resignFirstResponder];
     self.vuilongdoi.text = @"Vui lòng đợi....";
   // [self rungetprofile];
    evtThread = [ [NSThread alloc] initWithTarget:self
                                         selector:@selector( rungetprofile )
                                           object:nil ];
    [ evtThread start ];
//    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"https://graph.facebook.com/%@",self.iduser.text]]];
//    NSError *erro = nil;
//    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:&erro];
//    if (erro) {
//        UIAlertView *alv = [[UIAlertView alloc] initWithTitle:@"Thông báo" message:@"Lỗi rồi" delegate:nil
//    cancelButtonTitle:@"oke" otherButtonTitles: nil];
//        [alv show];
//        return;
//    }
//
//    NSError *jsonParsingError = nil;
//    NSArray *publicTimeline = [NSJSONSerialization JSONObjectWithData:response options:0 error:&jsonParsingError];
//    NSDictionary *tweet = [publicTimeline objectAtIndex:0];
//    
//    NSLog(@"Statuses: %@", [tweet objectForKey:@"id"]);
    
    // create the URL we'd like to query
//    NSURL *myURL = [[NSURL alloc]initWithString:[NSString stringWithFormat:@"https://graph.facebook.com/%@",self.iduser.text]];
//                    
//    // we'll receive raw data so we'll create an NSData Object with it
//    NSData *myData = [[NSData alloc]initWithContentsOfURL:myURL];
//    if (!myData) {
//        UIAlertView *alv = [[UIAlertView alloc] initWithTitle:@"Thông báo" message:@"Lỗi rồi" delegate:nil
//                                            cancelButtonTitle:@"oke" otherButtonTitles: nil];
//        [alv show];
//        return;
//    }
//    // now we'll parse our data using NSJSONSerialization
//    id myJSON = [NSJSONSerialization JSONObjectWithData:myData options:NSJSONReadingMutableContainers error:nil];
//
//    // take a look at all elements in the array
//    for (id name in myJSON) {
//       // NSLog(@"%@ %@",name,[myJSON objectForKey:name]);
//    }
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField{
     [self.View1 setHidden:YES];
      self.vuilongdoi.text = @"";
    self.Name.text = @"";
    self.Uname.text = @"";
    self.FName.text = @"";
    self.Lname.text = @"";
    self.link.text = @"";
    self.locale.text = @"";
    self.Gender.text = @"";
}

-(void)rungetprofile{
    
    NSURL *myURL = [[NSURL alloc]initWithString:[NSString stringWithFormat:@"https://graph.facebook.com/%@",self.iduser.text]];
    // chuyen du lieu vao data
    NSData *myData = [[NSData alloc]initWithContentsOfURL:myURL];
    if (!myData) {
      //  UIAlertView *alv = [[UIAlertView alloc] initWithTitle:@"Thông báo" message:@"Xảy ra lỗi vui lòng nhập lại." delegate:nil
                          //                  cancelButtonTitle:@"oke" otherButtonTitles: nil];
       // [alv show];
        self.vuilongdoi.text = @"Có lỗi vui lòng nhập lại.";
         [evtThread cancel];
         [self.View1 setHidden:YES];
        return;
    }
  
    // lay du lieu chuyen kieu json
    id myJSON = [NSJSONSerialization JSONObjectWithData:myData options:NSJSONReadingMutableContainers error:nil];
    
   
    
    self.ID.text = [myJSON objectForKey:@"id"];
    self.Name.text = [myJSON objectForKey:@"name"];
    self.FName.text = [myJSON objectForKey:@"first_name"];
    self.Lname.text = [myJSON objectForKey:@"last_name"];
    self.Gender.text = [myJSON objectForKey:@"gender"];
    self.locale.text = [myJSON objectForKey:@"locale"];
    self.Uname.text = [myJSON objectForKey:@"username"];
    if ([myJSON objectForKey:@"link"]) {
        self.link.text = [myJSON objectForKey:@"link"];
    }
    
    
    NSURL *myURLavatar = [[NSURL alloc]initWithString:[NSString stringWithFormat:@"https://graph.facebook.com/%@/picture",self.iduser.text]];
    
    //chuyen anh de hien thi
    NSData *myDataavatar = [[NSData alloc]initWithContentsOfURL:myURLavatar];
    UIImage * ui = [[UIImage alloc] initWithData:myDataavatar];
    [self.avatar setImage:ui];
     
    [self.View1 setHidden:NO];
     // [self.vuilongdoi setHidden:YES];
    [evtThread cancel];
    //while ([[NSThread currentThread] isCancelled]) {
  //  }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
       [textField resignFirstResponder];
     //[self rungetprofile];
  //  [NSThread detachNewThreadSelector:@selector(rungetprofile:) toTarget:self withObject:nil];
    
    //NSThread*
    evtThread = [ [NSThread alloc] initWithTarget:self
                                         selector:@selector( rungetprofile )
                                           object:nil ];
    [ evtThread start ];
    
//    NSURL *myURL = [[NSURL alloc]initWithString:[NSString stringWithFormat:@"https://graph.facebook.com/%@",self.iduser.text]];
//    
//    // chuyen du lieu vao data
//    NSData *myData = [[NSData alloc]initWithContentsOfURL:myURL];
//    if (!myData) {
//        UIAlertView *alv = [[UIAlertView alloc] initWithTitle:@"Thông báo" message:@"Lỗi rồi" delegate:nil
//                                            cancelButtonTitle:@"oke" otherButtonTitles: nil];
//        [alv show];
//        return FALSE;
//    }
//    // lay du lieu chuyen kieu json
//    id myJSON = [NSJSONSerialization JSONObjectWithData:myData options:NSJSONReadingMutableContainers error:nil];
//    
//    [self.View1 setHidden:NO];
//    
//    self.ID.text = [myJSON objectForKey:@"id"];
//    self.Name.text = [myJSON objectForKey:@"name"];
//    self.FName.text = [myJSON objectForKey:@"first_name"];
//    self.Lname.text = [myJSON objectForKey:@"last_name"];
//    self.Gender.text = [myJSON objectForKey:@"gender"];
//    self.locale.text = [myJSON objectForKey:@"locale"];
//    self.Uname.text = [myJSON objectForKey:@"username"];
//    if ([myJSON objectForKey:@"link"]) {
//        self.link.text = [myJSON objectForKey:@"link"];
//    }
//    
//    
//    NSURL *myURLavatar = [[NSURL alloc]initWithString:[NSString stringWithFormat:@"https://graph.facebook.com/%@/picture",self.iduser.text]];
//    
//    //chuyen anh de hien thi
//    NSData *myDataavatar = [[NSData alloc]initWithContentsOfURL:myURLavatar];
//    UIImage * ui = [[UIImage alloc] initWithData:myDataavatar];
//    [self.avatar setImage:ui];
    return YES;
}

- (IBAction)save:(id)sender {
     NSURL *myURLavatar = [[NSURL alloc]initWithString:[NSString stringWithFormat:@"https://graph.facebook.com/%@/picture",self.iduser.text]];
    NSData * imageData = [[NSData alloc] initWithContentsOfURL: myURLavatar];
    UIImage *image = [UIImage imageWithData: imageData];
    NSString *documentsDirectory = [NSHomeDirectory() stringByAppendingPathComponent:@"avatar"];
    NSString* pathEnd =  [documentsDirectory stringByAppendingFormat:@"/%@.png",self.Uname.text];
    NSLog(@"%@",pathEnd);
    NSData *data1 = [NSData dataWithData:UIImagePNGRepresentation(image)];
    NSError *writeError = nil;
    [data1 writeToFile:pathEnd options:NSDataWritingAtomic error:&writeError];
   
    [self logWithString:self.Uname.text:pathEnd];
    if (writeError) {
        UIAlertView *alv = [[UIAlertView alloc] initWithTitle:@"Thông báo" message:@"Lưu ảnh lỗi." delegate:nil
                                            cancelButtonTitle:@"oke" otherButtonTitles: nil];
        [alv show];
    }
    
}

-(void)logWithString:(NSString*)filename : (NSString*) imagepath{
    
    // Create the file
    NSError *error;
    
    // Directory
    NSString *documentsDirectory = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.txt",filename]];
    NSLog(@"%@",filePath);
    // Get the file contents
   // NSData *localData = [NSData dataWithContentsOfFile:filePath];
    

         NSString *string = [[NSString alloc] init ];
         string = [string stringByAppendingFormat:@"%@\n", self.ID.text];//-Id          :    
         string = [string stringByAppendingFormat:@"%@\n", self.Name.text];//-Name        :    
         string = [string stringByAppendingFormat:@"%@\n", self.FName.text];//-First_name  :    
         string = [string stringByAppendingFormat:@"%@\n", self.Lname.text];//-Last_name   :    
         string = [string stringByAppendingFormat:@"%@\n", self.Gender.text];//-Gender      :    
         string = [string stringByAppendingFormat:@"%@\n", self.locale.text];//-Locale      :    
         string = [string stringByAppendingFormat:@"%@\n", self.Uname.text];//-Username    :    
         string = [string stringByAppendingFormat:@"%@\n", self.link.text];//-Link face   :    
         string = [string stringByAppendingFormat:@"%@", imagepath];//-Link image  :    

//    NSData *localData = [NSData dataWithContentsOfFile:filePath];
//    if (localData) {
//        NSString *logString = [[NSString alloc] initWithData:localData encoding:NSUTF8StringEncoding];
//        string = [logString stringByAppendingFormat:@"%@\n", string];
//        [logString release];
//    }
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    int sobanluu = [defaults integerForKey:@"SOBANLUU"];
//    NSString *ageString = [NSString stringWithFormat:@"%@",self.Uname.text];
//    NSLog(@"So ban luu truoc: %i",sobanluu);
//    BOOL daco = false;
//    for (int i = 1;i<=sobanluu;i++) {
//        NSString *una = [NSString stringWithFormat:@"USERNAME%i",i];
//        NSString *username = [defaults objectForKey:una];
//        if ([username isEqual:ageString]) {
//            daco = true;
//              break;
//        }
//    }
//    
//    if (daco==false) {
//        sobanluu++;
//        NSString *uname = [NSString stringWithFormat:@"USERNAME%i",sobanluu];
//        [defaults setObject:ageString forKey:uname];
//        [defaults setInteger:sobanluu forKey:@"SOBANLUU"];
//        [defaults synchronize];
//    }
//    
//    NSUserDefaults *defaults1 = [NSUserDefaults standardUserDefaults];
//    int sobanluu1 = [defaults1 integerForKey:@"SOBANLUU"];
//    NSLog(@"So ban luu sau: %i",sobanluu1);
//     NSString *uname1 = [NSString stringWithFormat:@"USERNAME%i",sobanluu1];
//    NSString *firstName = [defaults1 objectForKey:uname1];
//    
//    NSLog(@"%@",firstName);
    
    // Write to the file
    [string writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:&error];
}//end
- (IBAction)xemdanhsachdaluu:(id)sender {
   // tableView * bb = [[tableView alloc] init];
    UserViewTXT * bb = [[UserViewTXT alloc] init];
   // [self presentViewController:bb animated:YES completion:^{
    
   // }];
     [self setTitle:@"Back"];
     [[self navigationController] pushViewController:bb animated:YES];
}
@end
