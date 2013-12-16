//
//  PrimeiraTelaViewController.h
//  MyFirstEmptyApplication
//
//  Created by Irineu Mauricio V T Filho on 14/12/13.
//  Copyright (c) 2013 Irineu Mauricio V T Filho. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SegundaTelaViewController.h"

@interface PrimeiraTelaViewController : UIViewController <UITextFieldDelegate, UIActionSheetDelegate>
    
    @property (weak, nonatomic) IBOutlet UITextField *campo1;
    @property (weak, nonatomic) IBOutlet UITextField *campo2;
    @property (weak, nonatomic) IBOutlet UIImageView *imgView;
    @property (weak, nonatomic) IBOutlet UILabel *txtSlider;
- (IBAction)sliderValueChanged:(id)sender;
- (IBAction)btnOk:(id)sender;
- (IBAction)btnProxima:(id)sender;


@end
