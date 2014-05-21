//
//  FirstViewController.m
//  Chapter10
//
//  Created by Yitref, Almaz on 5/12/14.
//  Copyright (c) 2014 Yitref, Almaz. All rights reserved.
//

#import "LMAContactsController.h"

@interface LMAContactsController ()

@end

@implementation LMAContactsController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _scrollView.contentSize = CGSizeMake(320, 500);
}

- (void)viewDidLayoutSubviews
{
    _scrollView.contentSize = CGSizeMake(320, 500);

    // Dispose of any resources that can be recreated.
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)backgroundTap:(id)sender
{
    [self.view endEditing:YES];
}
- (IBAction)changeEditMode:(id)sender {
    NSArray *textFields = @[_txtName, _txtAddress, _txtCity, _txtState,
                            _txtZip, _txtPhone, _txtCell, _txtEmail];
    //3
    if (_swich.isOn == false){
        for (UITextField *txtfield in textFields) {
            [txtfield setEnabled:NO];
            [txtfield setBorderStyle:UITextBorderStyleNone];
        }
        [_btnChange setHidden:YES];
    }
    else if (_swich.isOn == 1)
    {
        //4
        for (UITextField *txtfield in textFields) {
            //5
            [txtfield setEnabled:YES];
            [txtfield setBorderStyle:UITextBorderStyleRoundedRect];
        }
        //6
        [_btnChange setHidden:NO];
    }
}


@end
