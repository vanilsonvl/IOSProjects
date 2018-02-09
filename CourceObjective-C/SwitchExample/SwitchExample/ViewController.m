//
//  ViewController.m
//  SwitchExample
//
//  Created by Palotec on 21/12/2017.
//  Copyright © 2017 Vanilsonvl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)onSwitchChange:(id)sender {
    UISwitch *s = (UISwitch *) sender;
    if (s.on == YES) {
        _emailLabel.hidden = NO;
        _emailTextField.hidden = NO;
    } else {
        _emailLabel.hidden = YES;
        _emailTextField.hidden = YES;
    }
}

- (IBAction)onClick:(id)sender {
    if (_emailSwitch.on == YES) {
        [_emailSwitch setOn:NO animated: YES];
        _emailLabel.hidden = YES;
        _emailTextField.hidden = YES;
    } else {
        [_emailSwitch setOn:YES animated: YES];
        _emailLabel.hidden = NO;
        _emailTextField.hidden = NO;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
