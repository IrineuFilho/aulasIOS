//
//  PrimeiraTelaViewController.m
//  MyFirstEmptyApplication
//
//  Created by Irineu Mauricio V T Filho on 14/12/13.
//  Copyright (c) 2013 Irineu Mauricio V T Filho. All rights reserved.
//

#import "PrimeiraTelaViewController.h"

@interface PrimeiraTelaViewController (){
    SegundaTelaViewController *segundaTela;
}

@end

@implementation PrimeiraTelaViewController

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
    self.campo1.delegate = self;
    self.campo2.delegate = self;
    
    self.title = @"Voltar para"; //o title sera o nome do botao back da proxima pagina. se for muito grande, ele volta como back
    
    UIImage *imagem = [UIImage imageNamed:@"Bandeira_do_Brasil.png"];
                       
                       self.imgView.image = imagem;
    
    
    //adicionar um botao na uinavigation
    
    UIBarButtonItem *btnAtualizar = [UIBarButtonItem alloc];
    
    btnAtualizar = [btnAtualizar initWithTitle:@"atualizar" style:UIBarButtonItemStyleBordered target:self  action:@selector(atualizar)];
    
    self.navigationItem.rightBarButtonItem = btnAtualizar;
    
    //mudar a cor do navigation bar
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:11/225.0f green:112/255.0f blue:4/255.0f alpha:1];
}
    
    -(void)atualizar
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"atualizar" message:@"atualizando" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
        [alert show];
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
//    [self.campo1 resignFirstResponder];
//    [self.campo2 resignFirstResponder];

    [self.view endEditing:YES];
    
//    for (id textField in self.view.subviews)
//    {
//        if ([textField isKindOfClass:[UITextField class]]  && [textField isFirstResponder])
//        {
//            [textField resignFirstResponder];
//        }
//    }

}
    
-(void) showAlerta:(NSString*) msg
{
    UIAlertView *alerta = [[UIAlertView alloc] initWithTitle:@"Informação" message:msg delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
    [alerta show];
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField
{
    if(textField == self.campo1)
    {
        [self.campo2 becomeFirstResponder];
        return YES;
    }else if(textField == self.campo2)
    {
        [self showAlerta:self.campo2.text];
        return YES;
    }
    return NO;
}

- (IBAction)sliderValueChanged:(id)sender
{
    UISlider *slider = sender;
    
    self.txtSlider.text = [NSString stringWithFormat:@"%0.2f", [slider value]];
}
    
- (IBAction)btnOk:(id)sender {
    UIActionSheet *myActionSheet = [[UIActionSheet alloc] initWithTitle:@"Deseja Continuar?" delegate:self cancelButtonTitle:@"nao" destructiveButtonTitle:@"sim" otherButtonTitles:@"teste", @"teste 2", nil];
    [myActionSheet showInView:self.view];

}
    
- (IBAction)btnProxima:(id)sender
{
    
    segundaTela = [[SegundaTelaViewController alloc] init];
//primeira maneira sem animação
//    UIWindow *uiWindow = [[UIApplication sharedApplication] keyWindow];
//
//    UIView *view = segundaTela.view;
//    [uiWindow addSubview:view];
    
    //presentViewController
    
//    segundaTela.modalTransitionStyle = UIModalTransitionStyleCoverVertical; //animacao da transacao
//
//    [self presentViewController:segundaTela animated:YES completion:nil];
    
    
    //chamando com navigation controller

    [self.navigationController pushViewController:segundaTela animated:YES];
    
}
-(void) actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
    switch (buttonIndex) {
        case 0:
            NSLog(@"sim");
        break;
        
        case 1:
            NSLog(@"teste");
        break;
        
        case 2:
        NSLog(@"nao");
        break;

        
        default:
            NSLog(@"outro");
        break;
    }
    NSLog([NSString stringWithFormat:@"%d", buttonIndex ]);
    
}
    
    

    
@end
