//
//  ViewController.m
//  calc
//
//  Created by 伊藤喬一郎 on 2014/12/02.
//  Copyright (c) 2014年 伊藤喬一郎. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

@synthesize kazulabel;


- (void)viewDidLoad {
    [super viewDidLoad];
    number = 0;
    total = 0;
    init = 1;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tasuosu:(id)sender {
    number++;
    kazutext = [NSString stringWithFormat: @"%f", number];
    [kazulabel setText:kazutext];
}
- (IBAction)hikuosu:(id)sender {
    number = number - 1;
    kazutext = [NSString stringWithFormat: @"%f", number];
    [kazulabel setText:kazutext];
}
- (IBAction)inputNumber1:(id)sender {
    //　　NSInteger
    number = (number * 10) + 1;
    kazutext = [NSString stringWithFormat: @"%f", number];
    [kazulabel setText:kazutext];
}
- (IBAction)inputNumber2:(id)sender {
    number = (number * 10) + 2;
    kazutext = [NSString stringWithFormat: @"%f", number];
    [kazulabel setText:kazutext];
}
- (IBAction)inputNumber3:(id)sender {
    number = (number * 10) + 3;
    kazutext = [NSString stringWithFormat: @"%f", number];
    [kazulabel setText:kazutext];
}
- (IBAction)inputNumber4:(id)sender {
    number = (number * 10) + 4;
    kazutext = [NSString stringWithFormat: @"%f", number];
    [kazulabel setText:kazutext];
}
- (IBAction)inputNumber5:(id)sender {
    number = (number * 10) + 5;
    kazutext = [NSString stringWithFormat: @"%f", number];
    [kazulabel setText:kazutext];
}
- (IBAction)inputNumber6:(id)sender {
    number = (number * 10) + 6;
    kazutext = [NSString stringWithFormat: @"%f", number];
    [kazulabel setText:kazutext];
}
- (IBAction)inputNumber7:(id)sender {
    number = (number * 10) + 7;
    kazutext = [NSString stringWithFormat: @"%f", number];
    [kazulabel setText:kazutext];
}
- (IBAction)inputNumber8:(id)sender {
    number = (number * 10) + 8;
    kazutext = [NSString stringWithFormat: @"%f", number];
    [kazulabel setText:kazutext];
}
- (IBAction)inputNumber9:(id)sender {
    number = (number * 10) + 9;
    kazutext = [NSString stringWithFormat: @"%f", number];
    [kazulabel setText:kazutext];
}
- (IBAction)inputNumber0:(id)sender {
    number = (number * 10) + 0;
    kazutext = [NSString stringWithFormat: @"%f", number];
    [kazulabel setText:kazutext];
}
- (IBAction)inputNumberPAI:(id)sender {
    number = 3.141592653;
    kazutext = [NSString stringWithFormat: @"π"];
    [kazulabel setText:kazutext];
}

- (IBAction)Clear:(id)sender {
    number = 0;
    total = 0;
    fake = 0;
    init = 1;
    kazutext = [NSString stringWithFormat: @"%f", number];
    [kazulabel setText:kazutext];
}
- (IBAction)Answer:(id)sender {
    [self calc];
    kazutext = [NSString stringWithFormat: @"%f", number];
    [kazulabel setText:kazutext];
    Flug = 0;
}
- (IBAction)Addition:(id)sender {
    [self calc];
    kazutext = [NSString stringWithFormat: @"%f+", number];
    [kazulabel setText:kazutext];
    Flug = 1;
    fake = number;
    number = 0;
}

- (IBAction)Subtraction:(id)sender {
    [self calc];
    kazutext = [NSString stringWithFormat: @"%f-", number];
    [kazulabel setText:kazutext];
    Flug =2;
    fake = number;
    number = 0;
}

- (IBAction)Multiplication:(id)sender {
    [self calc];
    kazutext = [NSString stringWithFormat: @"%f×", number];
    [kazulabel setText:kazutext];
    Flug = 3;
    fake = number;
    number = 0;
}

- (IBAction)Division:(id)sender {
    [self calc];
    kazutext = [NSString stringWithFormat: @"%f÷", number];
    [kazulabel setText:kazutext];
    Flug = 4;
    fake = number;
    number = 0;
}


- (IBAction)Step:(id)sender {
    if (number > 0)
    {
        fake = 1;
        for (int i=1 ; i<=number ; i++)
        {
            fake = i*fake;
        }
    }
    number = fake;
    kazutext = [NSString stringWithFormat: @"%f", number];
    [kazulabel setText:kazutext];
   // number = 0;
}


- (IBAction)Sqrt:(id)sender {
    fake = number;
    number = sqrt(fake);
}

- (IBAction)Power:(id)sender {
    Flug = 5;
    fake = number;
    number = 0;
}


- (void) calc{
switch (Flug)
    {
case 1:
  number = fake + number;
  kazutext = [NSString stringWithFormat: @"%f", number];
 [kazulabel setText:kazutext];
  break;
        
case 2:
  number = fake - number ;
  kazutext = [NSString stringWithFormat: @"%f", number];
  [kazulabel setText:kazutext];
  break;

case 3:
  number = number*fake;
  kazutext = [NSString stringWithFormat: @"%f", number];
  [kazulabel setText:kazutext];
  break;
        
case 4:
  number = fake/number ;
  kazutext = [NSString stringWithFormat: @"%f", number];
  [kazulabel setText:kazutext];
  break;
            
case 5:
  number = pow(fake,number);
  kazutext = [NSString stringWithFormat: @"%f", number];
  [kazulabel setText:kazutext];
  break;
            
default:
  break;
   }
}

@end
