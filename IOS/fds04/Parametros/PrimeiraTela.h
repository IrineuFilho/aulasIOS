//
//  PrimeiraTela.h
//  Parametros
//
//  Created by Irineu Mauricio V T Filho on 10/01/14.
//  Copyright (c) 2014 Irineu Mauricio V T Filho. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SegundaTela.h"

@interface PrimeiraTela : UIViewController

@property (strong, nonatomic) SegundaTela *segunda;

- (IBAction)chamarSegundaTela:(id)sender;

@end
