//
//  ViewController.m
//  Sample
//
//  Created by Michele Titolo on 1/15/13.
//  Copyright (c) 2013 Michele Titolo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.myString = @"Hello I am a string";
    
    NSArray *images;
    NSObject* httpClient;
    NSLog(@"%@",self.myString);
    NSMutableURLRequest *request = [httpClient multipartFormRequestWithMethod:@"POST" path:kDatasourceURLString parameters:parameters constructingBodyWithBlock: ^(id <AFMultipartFormData>formData) {
		[self.images enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL * stop) {
            [formData appendPartWithFileData:[NSData data] name:@"pic" fileName:@".png" mimeType:@"image/png"];
        }];
                                                  
    }];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
