//
//  ViewController.m
//  CustomEnumerator
//
//  Created by 李震 on 2018/6/24.
//  Copyright © 2018年 李震. All rights reserved.
//

#import "ViewController.h"
#import "IterationView.h"
#import "Node.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    IterationView * view = [[IterationView alloc] initWithFrame:CGRectMake(100.f, 280.f, self.view.frame.size.width - 200.f, 300.f)];

    [self.view addSubview:view];
    
    
    Node * node = nil;
    while (node = [view nextObject]) {
        NSLog(@"%@", node.data);
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
