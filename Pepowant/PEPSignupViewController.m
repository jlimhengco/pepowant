//
//  PEPSignupViewController.m
//  Pepowant
//
//  Created by Melissa Huang on 8/20/13.
//  Copyright (c) 2013 Pepowant. All rights reserved.
//

#import "PEPSignupViewController.h"

@interface PEPSignupViewController ()

@end

@implementation PEPSignupViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

//submit button pushed
- (IBAction)submitButton:(id)sender {
    
    //if no first name was entered
    if (_firstNameField.hasText == FALSE) {
        UIAlertView *firstEmpty = [[UIAlertView alloc] initWithTitle:@"Error" message:@"First name is required." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:@"", nil];
        [firstEmpty show];
                    
    } else if (_lastNameField.hasText == FALSE) {
        //if no last name was entered
        UIAlertView *lastEmpty = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Last name is required." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:@"", nil];
        [lastEmpty show];
    
    } else {
        //save the first name to server
        //_firstNameField.text
        
        //save the last name to server
        //_lastNameField.text
        
        //go to next page
        PEPDiscountViewController *goToDiscount = [[PEPDiscountViewController alloc] initWithNibName:@"PEPDiscountViewController" bundle:[NSBundle mainBundle]];
        [self presentViewController:goToDiscount animated:YES completion:nil];
    }
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //pull org name from server
    //_orgNameLabel.text = ??;
    
    //pull org image from server
    //_orgImage.image = ??;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
