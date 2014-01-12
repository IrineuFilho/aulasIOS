//
//  Tela01ViewController.h
//  Projeto_01
//
//  Created by Irineu Mauricio V T Filho on 11/01/14.
//  Copyright (c) 2014 Irineu Mauricio V T Filho. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetalhesViewController.h"

@interface Tela01ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property(strong, nonatomic) DetalhesViewController *detalhes;

@end
