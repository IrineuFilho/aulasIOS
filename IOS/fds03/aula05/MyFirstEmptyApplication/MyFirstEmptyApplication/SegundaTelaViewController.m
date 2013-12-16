//
//  SegundaTelaViewController.m
//  MyFirstEmptyApplication
//
//  Created by Irineu Mauricio V T Filho on 14/12/13.
//  Copyright (c) 2013 Irineu Mauricio V T Filho. All rights reserved.
//

#import "SegundaTelaViewController.h"

@interface SegundaTelaViewController ()

@end

@implementation SegundaTelaViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
    
- (IBAction)btn:(id)sender {
    //primeiro modo
    //    [self.view removeFromSuperview];

    //segundo modo com presentviewcontroller
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
