//
//  ViewController.m
//  HeightApp
//
//  Created by Administrator on 10/25/17.
//  Copyright © 2017 Albert Diaz. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *txtFirstName;
@property (weak, nonatomic) IBOutlet UITextField *txtLastName;
@property (weak, nonatomic) IBOutlet UITextField *txtHeightFeet;
@property (weak, nonatomic) IBOutlet UITextField *txtHeightInches;
@property (weak, nonatomic) IBOutlet UIButton *btnSubmit;

@end

@implementation ViewController

//double Double (double n);

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString: @"sgMySegue"])
    {
        // Get reference to destination VC
        SecondViewController *secondVC = [segue destinationViewController];
        
        // Set Values
        secondVC.firstName = _txtFirstName.text;
        secondVC.lastName = _txtLastName.text;
        secondVC.personHeightInInches = [_txtHeightFeet.text intValue] * 12 + [_txtHeightInches.text intValue];
    }
}
@end
