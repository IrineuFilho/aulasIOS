//
//  Alerta.m
//  Projeto_01
//
//  Created by Irineu Mauricio V T Filho on 11/01/14.
//  Copyright (c) 2014 Irineu Mauricio V T Filho. All rights reserved.
//

#import "Alerta.h"

@implementation Alerta
+(void) alerta:(NSString *) msg
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alerta" message:msg delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
    
    [alert show ];
}

@end
