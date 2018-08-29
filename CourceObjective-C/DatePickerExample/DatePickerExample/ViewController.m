//
//  ViewController.m
//  DatePickerExample
//
//  Created by Vanilson NiLL on 09/07/2018.
//  Copyright © 2018 Vanilson NiLL. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

- (IBAction)dateOnClick:(id)sender {
    NSDate *theDate = [_birthdayDatePicker date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"d/M/yyyy HH:mm"];
    NSString *textDate = [[NSString alloc] initWithFormat: @"Data: %@", [dateFormat  stringFromDate:theDate]];
    _dateLabel.text = textDate;
    //[theDate release];
}


@end
