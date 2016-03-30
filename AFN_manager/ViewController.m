//
//  ViewController.m
//  AFN_manager
//
//  Created by max on 2016/3/30.
//  Copyright © 2016年 max hu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    http_manager *_manager = [http_manager shared];
    _manager._delegate = self;
    [_manager sendDataOfRequest:[_manager method_jsonFormatAndUrlIs:@"" andParameters:@{@"foo": @"bar", @"baz": @[@1, @2, @3]}]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - http delegate
- (void)http_finish_response:(NSURLResponse *)response :(id)responseObject :(NSError *)error
{
    if (error) {
        NSLog(@"Error: %@", error);
    } else {
        NSLog(@"%@ %@", response, responseObject);
    }
}

@end
