//
//  Tela01ViewController.m
//  Projeto_01
//
//  Created by Irineu Mauricio V T Filho on 11/01/14.
//  Copyright (c) 2014 Irineu Mauricio V T Filho. All rights reserved.
//

#import "Tela01ViewController.h"
#import "Alerta.h"
#import "DetalhesViewController.h"

@interface Tela01ViewController ()

@end

@implementation Tela01ViewController

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

    
    self.tableView.dataSource = self; //define o dataSource, como foi implementado nessa classe, ele eh self
    self.tableView.delegate =  self;

}

-(NSInteger)tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger)section
{

    return 5;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil)
    {
        cell =  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    NSInteger linha = indexPath.row;
    cell.textLabel.text = [NSString stringWithFormat:@"Linha: %d", linha];
    cell.imageView.image = [UIImage imageNamed:@"ps3-slim.jpg"];
    
    return cell;
    
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    NSInteger linha = indexPath.row;
    
//    NSString *msg = [NSString stringWithFormat:@"Linha: %d", linha ];
//    [Alerta alerta:msg];
        
    _detalhes = [[DetalhesViewController alloc] init];
    [_detalhes setTeste:@"Nome para"];
//    detalhes.descricao = @"Descricao para";
    
    [self.navigationController pushViewController:_detalhes animated:YES];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
