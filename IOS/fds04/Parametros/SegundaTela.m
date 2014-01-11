//
//  SegundaTela.m
//  Parametros
//
//  Created by Irineu Mauricio V T Filho on 10/01/14.
//  Copyright (c) 2014 Irineu Mauricio V T Filho. All rights reserved.
//

#import "SegundaTela.h"

@interface SegundaTela ()

@end

@implementation SegundaTela

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
    
    self.msg.text = self.mensagem;
    self.title = @"Segunda Tela";
    
//    UIBarButtonItem *btTeste = [[UIBarButtonItem alloc] init];
    
    
                                
    
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)voltar:(id)sender {
    [self.view removeFromSuperview];
    
}
@end
