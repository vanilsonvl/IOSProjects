//
//  ViewController.m
//  SegmentedExample
//
//  Created by Vanilson NiLL on 04/07/2018.
//  Copyright © 2018 Vanilson NiLL. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)OnSegmentedChange:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)OnSegmentedChange:(id)sender {
    UISegmentedControl *seg = (UISegmentedControl *) sender;
    if([seg selectedSegmentIndex] == 0) {
        _labelSunday.hidden = NO;
        _labelMonday.hidden = YES;
        _labelTuesday.hidden = YES;
        _labelWednesday.hidden = YES;
    }
    if([seg selectedSegmentIndex] == 1) {
        _labelSunday.hidden = YES;
        _labelMonday.hidden = NO;
        _labelTuesday.hidden = YES;
        _labelWednesday.hidden = YES;
    }
    if([seg selectedSegmentIndex] == 2) {
        _labelSunday.hidden = YES;
        _labelMonday.hidden = YES;
        _labelTuesday.hidden = NO;
        _labelWednesday.hidden = YES;
    }
    if([seg selectedSegmentIndex] == 3) {
        _labelSunday.hidden = YES;
        _labelMonday.hidden = YES;
        _labelTuesday.hidden = YES;
        _labelWednesday.hidden = NO;
    }
}
@end
