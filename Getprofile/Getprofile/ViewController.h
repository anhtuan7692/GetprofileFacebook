//
//  ViewController.h
//  Getprofile
//
//  Created by Trần Anh Tuấn on 12/12/13.
//  Copyright (c) 2013 Trần Anh Tuấn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserViewTXT.h"
@interface ViewController : UIViewController<UITextFieldDelegate>
@property (retain, nonatomic) IBOutlet UITextField *iduser;
- (IBAction)go:(id)sender;
- (IBAction)save:(id)sender;
@property (retain, nonatomic) IBOutlet UILabel *ID;
@property (retain, nonatomic) IBOutlet UILabel *Name;
@property (retain, nonatomic) IBOutlet UILabel *FName;
@property (retain, nonatomic) IBOutlet UILabel *Lname;
@property (retain, nonatomic) IBOutlet UILabel *Gender;
@property (retain, nonatomic) IBOutlet UILabel *locale;
@property (retain, nonatomic) IBOutlet UILabel *Uname;
@property (retain, nonatomic) IBOutlet UILabel *link;

@property (retain, nonatomic) IBOutlet UIImageView *avatar;

@property (retain, nonatomic) IBOutlet UIView *View1;

@property (retain, nonatomic) IBOutlet UILabel *vuilongdoi;
@property (retain, nonatomic) IBOutlet UIView *tableView;
- (IBAction)xemdanhsachdaluu:(id)sender;

@end
