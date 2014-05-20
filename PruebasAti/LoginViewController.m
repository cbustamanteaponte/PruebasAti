//
//  LoginViewController.m
//  PruebasAti
//
//  Created by Admin local on 5/19/14.
//  Copyright (c) 2014 pucp. All rights reserved.
//

#import "LoginViewController.h"
#import "URLsJson.h"

@interface LoginViewController ()

@end

@implementation LoginViewController
{
    NSDictionary * respuesta;
}

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//este metodo ocultara el keyboard
-(void)dismissKeyboard {
    [self.tFusuario resignFirstResponder];
    [self.tFcontrasenha resignFirstResponder];
}

-(void) viewDidAppear:(BOOL)animated{
    NSUserDefaults * datosMemoria = [NSUserDefaults
        standardUserDefaults];
    NSString * NombreUsuario = [datosMemoria
        stringForKey:@"NombreUsuario"];
    
    NSString * ConstrasñaUsuario = [datosMemoria
        stringForKey:@"ConstraseñaUsuario"];
    
    if(![NombreUsuario isEqual: @""] && ![ConstrasñaUsuario isEqual:@""] && NombreUsuario != nil && ConstrasñaUsuario != nil){
        
        NSArray *keys = [NSArray arrayWithObjects:@"hacer",@"username",@"password",nil];
        NSArray *objects = [NSArray arrayWithObjects:@"login", NombreUsuario, ConstrasñaUsuario, nil];
        
        NSArray *dictionaryUsuario = [NSDictionary dictionaryWithObject:objects forKey:keys];
        
        NSDictionary *consulta = [NSDictionary dictionaryWithObjectsAndKeys:dictionaryUsuario,@"cuerpo", @"Autentication", @"operacion", nil];
        NSLog(@"JSON: %@", consulta);
        
        
    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
