//
//  ViewController.m
//  SliderExample
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

}
- (IBAction)onChangeSlider:(id)sender {
    UISlider *slider = (UISlider *) sender;
    int value = (int) slider.value;
    NSString *newString = [[NSString alloc] initWithFormat: @"%i", value];
    _USDDonateLabel.text = newString;
   // [newString release];
}

- (IBAction)on5Donate:(id)sender {
    _USDDonateLabel.text = @"5";
    _sliderCharity.value = 5;
}

- (IBAction)on10Donate:(id)sender {
    _USDDonateLabel.text = @"10";
    _sliderCharity.value = 10;
}

- (IBAction)on50Donate:(id)sender {
    _USDDonateLabel.text = @"50";
    _sliderCharity.value = 50;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
