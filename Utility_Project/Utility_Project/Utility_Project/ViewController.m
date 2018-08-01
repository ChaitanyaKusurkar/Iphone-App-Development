//
//  ViewController.m
//  Utility_Project
//
//  Created by Chaitanya on 3/30/16.
//  Copyright (c) 2016 UIS. All rights reserved.
//

#import "ViewController.h"
#import "PatientLogin.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize idText;

@synthesize passText;
- (void)viewDidLoad{
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)login:(id)sender {
  
    
    
    NSString *id1=@"Chaitanya";
     NSString *password1=@"UIS";
     NSString *id2=@"John";
     NSString *password2=@"UIS";
    NSString *loginid=idText.text;
    NSString *password=passText.text;
    
    if ([loginid isEqualToString:id1 ]&& [password isEqualToString:password1])
    {
    
        //NSLog(@"hi");
        PatientLogin  *PatientLogin=[self.storyboard instantiateViewControllerWithIdentifier:@"patientLogin"];
        [self.navigationController pushViewController:PatientLogin animated:YES];
        
            
        
    }
   else{
        UIAlertView *alertview=[[UIAlertView alloc]initWithTitle:@"Alert" message:@"Please enter valid id/password" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
                                [alertview show];
    }
}
- (IBAction)resignKeyboard:(id)sender {
    [sender resignFirstResponder];
}
@end
