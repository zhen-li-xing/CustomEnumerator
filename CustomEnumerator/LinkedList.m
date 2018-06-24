//
//  LinkedList.m
//  CustomEnumerator
//
//  Created by 李震 on 2018/6/24.
//  Copyright © 2018年 李震. All rights reserved.
//

#import "LinkedList.h"
#import "Node.h"


@implementation LinkedList

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.headNode = [Node nodeData:nil];
    }
    return self;
}

- (void)addData:(id)data {
    // 1. 头节点为空,就添加
    [self addData:data node:self.headNode];
    
    // 数量的增加
    self.numberOfNode++;
}

// 2. 有头结点了,就插入到下一个节点
- (void)addData:(id)data node:(Node *)node {
    
    if (node.nextNode == nil) {
        node.nextNode = [Node nodeData:data];
    } else {
        // 当下一个节点也有值了,进行递归调用
        [self addData:data node:node.nextNode];
    }
}

@end
