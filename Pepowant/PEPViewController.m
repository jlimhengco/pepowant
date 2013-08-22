//
//  PEPViewController.m
//  Pepowant
//
//  Created by Melissa Huang on 8/20/13.
//  Copyright (c) 2013 Pepowant. All rights reserved.
//

#import "PEPViewController.h"

@interface PEPViewController ()

@end

@implementation PEPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)submitPushed:(id)sender {
    
    //if no code was entered
    if (_codeTextField.hasText == FALSE) {
        UIAlertView *noCode = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Must enter a code." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:@"", nil];
        [noCode show];
    }
    //what the correct code is - fetch from server
    NSString *correctCode = @"9";
    if ([_codeTextField.text isEqualToString:correctCode]) {
        
        //save info to server
        NSString *codeEntered = _codeTextField.text; //the code tells what org the person is in
        
        //go to next page
        PEPSignupViewController *goToSignup = [[PEPSignupViewController alloc] initWithNibName:@"PEPSignupViewController" bundle:[NSBundle mainBundle]];
        [self presentViewController:goToSignup animated:YES completion:nil];
    } else {
        
        //incorrect code entered
        UIAlertView *wrongCode = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Invalid code. Try again." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:@"", nil];
        [wrongCode show];
    }
}

@end
