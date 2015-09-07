//
//  ViewController.m
//  SaveUDIDToKeychain
//
//  Created by apple on 15/7/9.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "ViewController.h"
#import "SSKeychain.h"

#define UDID  @"udid"
#define UDID_IDEN  @"udidIden"
#define GROUP   @"com.doing.SaveUDIDToKeychain"
#define APPID  @"19881003"

@interface ViewController ()
{
    
}
@property (weak, nonatomic) IBOutlet UITextField *textField;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //service:填写当前程序的bundleId，account这个填写要存储在当前这个service下的 哪个账户下。
    self.textField.text = [SSKeychain passwordForService:@"com.doing.keychain" account:@"user"];

     // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 保存UDID

- (IBAction)saveUDIDAction:(id)sender {
    
    if(self.textField.text){
        //保存UDID
        [SSKeychain setPassword:self.textField.text
                     forService:@"com.doing.keychain"account:@"user"];
    }
    
}


@end
