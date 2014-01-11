//
//  Tela02ViewController.m
//  Projeto_01
//
//  Created by Irineu Mauricio V T Filho on 11/01/14.
//  Copyright (c) 2014 Irineu Mauricio V T Filho. All rights reserved.
//

#import "Tela02ViewController.h"

@interface Tela02ViewController ()

@end

@implementation Tela02ViewController

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
    
    [self.activity startAnimating];
    
//    NSURL *url = [NSURL URLWithString:@"http://www.google.com.br"];
    
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"] isDirectory:NO];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [self.webview loadRequest:request];
    [self.webview setDelegate:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [self.activity stopAnimating];
}

@end
