//
//  ViewController.h
//  PickerVIew
//
//  Created by Omnipresent on 21/02/14.
//  Copyright (c) 2014 iOSCuriosity. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    UILabel *lblPicker;
    UILabel *lblPicker1;
    UILabel *lblDatePicker;
    UIPickerView *pickerViewObj;
    UIDatePicker *datePickerObj;
    NSArray *pickerData1;
    NSArray *pickerData2;
    
    
}

@property (strong, nonatomic) IBOutlet UIDatePicker *datePickerObj;
@property (strong, nonatomic) IBOutlet UIPickerView * pickerViewObj;
@property (strong, nonatomic) IBOutlet UILabel *lblPicker;
@property (strong, nonatomic) IBOutlet UILabel *lblPicker1;
@property (strong, nonatomic) IBOutlet UILabel *lblDatePicker;
- (IBAction)btnSelectPicker:(id)sender;
- (IBAction)btnSelectDatePicker:(id)sender;
- (void)btnChangeDate;
@end
