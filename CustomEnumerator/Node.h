//
//  Node.h
//  CustomEnumerator
//
//  Created by 李震 on 2018/6/24.
//  Copyright © 2018年 李震. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

/** 指向下一个节点(链表中的指针) */
@property (nonatomic, strong) Node * nextNode;

/** 节点里面的data */
@property (nonatomic, strong) id data;

/** 节点数据 */
+ (instancetype)nodeData:(id)data;

@end
