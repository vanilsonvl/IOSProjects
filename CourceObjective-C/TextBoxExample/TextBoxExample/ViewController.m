//
//  ViewController.m
//  TextBoxExample
//
//  Created by Vanilsonvl on 21/12/2017.
//  Copyright © 2017 Vanilsonvl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)onDoneUsername:(id)sender {
    [sender resignFirstResponder];
}

- (IBAction)onDonePassword:(id)sender {
    [sender resignFirstResponder];
}

- (IBAction)onClick:(id)sender {
    NSString *data = @"";
    data = [data stringByAppendingString: _usernameTextBox.text];
    data = [data stringByAppendingString: @" "];
    data = [data stringByAppendingString:_passwordTextBox.text];
    _showData.text = data;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
