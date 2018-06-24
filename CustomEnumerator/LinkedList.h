//
//  LinkedList.h
//  CustomEnumerator
//
//  Created by 李震 on 2018/6/24.
//  Copyright © 2018年 李震. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Node;
@interface LinkedList : NSObject

@property (nonatomic, strong) Node * headNode; /**< 头结点 */

/**
 链表中的节点数
 */
@property (nonatomic, assign) NSInteger numberOfNode;

- (void)addData:(id)data; /**< 节点上的数据 */

@end
