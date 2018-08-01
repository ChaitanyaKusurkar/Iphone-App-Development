//
//  ViewController.h
//  Utility_Project
//
//  Created by Chaitanya on 3/30/16.
//  Copyright (c) 2016 UIS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PatientLogin.h"

@interface ViewController : UIViewController
{
    PatientLogin *PatientLogin;

}
- (IBAction)login:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *idText;
@property (weak, nonatomic) IBOutlet UITextField *passText;
- (IBAction)resignKeyboard:(id)sender;


@end
