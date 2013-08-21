//
//  PEPSignupViewController.h
//  Pepowant
//
//  Created by Melissa Huang on 8/20/13.
//  Copyright (c) 2013 Pepowant. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PEPSignupViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *orgNameLabel;
@property (strong, nonatomic) IBOutlet UIImageView *orgImage;
@property (strong, nonatomic) IBOutlet UITextField *firstNameField;
@property (strong, nonatomic) IBOutlet UITextField *lastNameField;
@property (strong, nonatomic) IBOutlet UIButton *submitButton;

@end
