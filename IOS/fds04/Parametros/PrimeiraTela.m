//
//  PrimeiraTela.m
//  Parametros
//
//  Created by Irineu Mauricio V T Filho on 10/01/14.
//  Copyright (c) 2014 Irineu Mauricio V T Filho. All rights reserved.
//

#import "PrimeiraTela.h"

@interface PrimeiraTela ()

@end

@implementation PrimeiraTela

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
    self.title = @"First Window";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)chamarSegundaTela:(id)sender {
    
    self.segunda =  [[SegundaTela alloc] init];
    self.segunda.mensagem = @"Vamos passar uma mensage";
//    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
//    
//    [window addSubview:self.segunda.view];
//
    
    [self.navigationController pushViewController:self.segunda animated:YES];
}
@end
