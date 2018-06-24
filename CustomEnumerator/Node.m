//
//  Node.m
//  CustomEnumerator
//
//  Created by 李震 on 2018/6/24.
//  Copyright © 2018年 李震. All rights reserved.
//

#import "Node.h"

@implementation Node

+ (instancetype)nodeData:(id)data {
    Node *node = [[self alloc] init];
    node.data = data;
    
    return node;
}

@end
