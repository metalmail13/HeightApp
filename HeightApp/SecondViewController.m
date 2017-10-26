//
//  SecondViewController.m
//  HeightApp
//
//  Created by Administrator on 10/25/17.
//  Copyright © 2017 Albert Diaz. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblDisplayDetails;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Perform conversions
    int feet = _personHeightInInches / 12;
    int inches = _personHeightInInches % 12;
    double meters = _personHeightInInches * .0254;
    
    // Set Label
    self.lblDisplayDetails.text = [NSString stringWithFormat: @"Hello, %@ %@, your height of %i' %i is %f meters", _firstName, _lastName, feet, inches, meters];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
