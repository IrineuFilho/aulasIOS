//
//  SegundaTela.h
//  Parametros
//
//  Created by Irineu Mauricio V T Filho on 10/01/14.
//  Copyright (c) 2014 Irineu Mauricio V T Filho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SegundaTela : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *msg;
- (IBAction)voltar:(id)sender;

@property (nonatomic, strong) NSString *mensagem;

@end
