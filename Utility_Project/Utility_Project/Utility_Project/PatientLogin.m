//
//  PatientLogin.m
//  Utility_Project
//
//  Created by Chaitanya on 3/30/16.
//  Copyright (c) 2016 UIS. All rights reserved.
//


#import "PatientLogin.h"
#import "doctorProfile.h"
@interface PatientLogin ()

@end

@implementation PatientLogin
@synthesize doctorList;
@synthesize doc_table_outlet;
@synthesize doc_List;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSArray *doctorCategory=[[NSArray alloc]initWithObjects:@"Dentist",@"Pediatric",@"Gynaecologist", nil];
    
    
    self.doctorList=doctorCategory;
    
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *) pickerView numberOfRowsInComponent:(NSInteger)component{
    return [doctorList count];
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [doctorList objectAtIndex:row];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [doc_List count];
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"Doctors"];
    if(cell== nil){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Doctors"];
    }
    cell.textLabel.text=[doc_List objectAtIndex:indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIAlertView *alertview = [[UIAlertView alloc] initWithTitle:@"Alert" message:[NSString stringWithFormat:@"YOu selected %@",[doc_List objectAtIndex:indexPath.row]] delegate:self cancelButtonTitle:@"Continue" otherButtonTitles:nil];
    [alertview show];
   
    doctorProfile  *doctorProfile1=[self.storyboard instantiateViewControllerWithIdentifier:@"doctorProfile"];
       doctorProfile1.property1= [doc_List objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:doctorProfile1 animated:YES];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)selectDoctor:(id)sender {
    NSInteger row=[_doctorCategory selectedRowInComponent:0];
   
    NSString *docSelected= [doctorList objectAtIndex:row];
     NSString *title=[[NSString alloc] initWithFormat:@"You Selected %@",docSelected];
    UIAlertView *alertview=[[UIAlertView alloc]initWithTitle:@"Doctor Category" message:title delegate:nil cancelButtonTitle:@"OK"otherButtonTitles:nil];
    [alertview show];
    NSMutableArray *dentist_List=[[NSMutableArray alloc]initWithObjects:@"Dr. John",@"Dr. Alex",@"Dr. Flinch",nil];
    NSMutableArray *pediatric_List=[[NSMutableArray alloc]initWithObjects:@"Dr. Harry",@"Dr. Peter",@"Dr. Kate",nil];
    NSMutableArray *gynaecologist_List=[[NSMutableArray alloc]initWithObjects:@"Dr. James",@"Dr. Tom",@"Dr. Nelson",nil];
    if([docSelected isEqualToString:@"Dentist"]){
        doc_List=dentist_List;
    }
       if([docSelected isEqualToString:@"Pediatric"]){
        doc_List=pediatric_List;
    }
    if([docSelected isEqualToString:@"Gynaecologist"]){
        doc_List=gynaecologist_List;
    }
    [doc_table_outlet reloadData];
}


@end
