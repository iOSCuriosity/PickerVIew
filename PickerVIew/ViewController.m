//
//  ViewController.m
//  PickerVIew
//
//  Created by Omnipresent on 21/02/14.
//  Copyright (c) 2014 iOSCuriosity. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
}

@end

@implementation ViewController
@synthesize lblPicker,pickerViewObj,lblPicker1,datePickerObj,lblDatePicker;
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
    // for pickerview
    pickerViewObj.hidden = YES;
    pickerData1 = [NSArray arrayWithObjects:@"B.E.",@"BCA",@"MCA",@"M.Sc. IT",@"PGDCA", nil];
    pickerData2 = [NSArray arrayWithObjects:@"GTU", @"GU",@"SU", @"NGU", @"Other", nil];
    
    //for datepicker
    datePickerObj.hidden = YES;
    
    // Do any additional setup after loading the view from its nib.
}


- (IBAction)btnSelectPicker:(id)sender{
    
    UIButton *btnSelectPicker = (UIButton *)sender;
    
    if ([btnSelectPicker.titleLabel.text isEqualToString:@"Select"]) {
        pickerViewObj.hidden = NO;
        [btnSelectPicker setTitle:@"Done" forState:UIControlStateNormal];
    }else{
        pickerViewObj.hidden = YES;
        [btnSelectPicker setTitle:@"Select" forState:UIControlStateNormal];
    }
    
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(component == 0){
        return pickerData1.count;
    }else{
        return [pickerData2 count];
    }
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (component == 0) {
        return [pickerData1 objectAtIndex:row];
    }else{
       return [pickerData2 objectAtIndex:row];
    }
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if(component == 0){
        lblPicker.text = [pickerData1 objectAtIndex:row];
    }else{
        lblPicker1.text = [pickerData2 objectAtIndex:row];
    }
    
}

- (IBAction)btnSelectDatePicker:(id)sender{
    UIButton *btnSelectDatePicker = (UIButton *)sender;
    if ([btnSelectDatePicker.titleLabel.text isEqualToString:@"Select"]) {
        datePickerObj.hidden = NO;
        [btnSelectDatePicker setTitle:@"Done" forState:UIControlStateNormal];
        [self btnChangeDate];
        /*NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
        dateFormat.dateStyle = NSDateFormatterShortStyle;
        lblDatePicker.text = [NSString stringWithFormat:@"%@",[dateFormat stringFromDate:datePickerObj.date]];
        */
    }
    else{
        datePickerObj.hidden = YES;
        [self btnChangeDate];

        [btnSelectDatePicker setTitle:@"Select" forState:UIControlStateNormal];
    }
    
}
    
- (void)btnChangeDate{
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    dateFormat.dateStyle = NSDateFormatterLongStyle;
    lblDatePicker.text = [NSString stringWithFormat:@"%@",[dateFormat stringFromDate:datePickerObj.date]];
    //[datePickerObj setDate: animated:<#(BOOL)#>]
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
