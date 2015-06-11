//
//  ViewController.h
//  calc
//
//  Created by 伊藤喬一郎 on 2014/12/02.
//  Copyright (c) 2014年 伊藤喬一郎. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    double number;
    double total;
    int Flug;
    int init;
    double fake;
    NSString *kazutext;
  //  IBOutlet UILabel *kazulabel;
    IBOutlet UILabel *anslabel;
    NSString *anstext;

    
}
@property (weak, nonatomic) IBOutlet UILabel *kazulabel;

@end

