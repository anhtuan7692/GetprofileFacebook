//
//  ViewProfile.h
//  Getprofile
//
//  Created by AnhTuan on 12/17/13.
//  Copyright (c) 2013 Trần Anh Tuấn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewProfile : UIViewController
@property (retain, nonatomic) IBOutlet UIImageView *imageAvatar;
@property (retain, nonatomic) IBOutlet UILabel *name;
@property (retain, nonatomic) IBOutlet UILabel *idUser;
@property (retain, nonatomic) IBOutlet UILabel *fName;
@property (retain, nonatomic) IBOutlet UILabel *lName;
@property (retain, nonatomic) IBOutlet UILabel *gender;
@property (retain, nonatomic) IBOutlet UILabel *username;
@property (retain, nonatomic) IBOutlet UILabel *local;
@property (retain, nonatomic) IBOutlet UILabel *link;

@end
