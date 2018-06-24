//
//  IterationView.h
//  CustomEnumerator
//
//  Created by 李震 on 2018/6/24.
//  Copyright © 2018年 李震. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IterationView : UIView

/** 查找下一个节点 */
- (id)nextObject;
/** 重置节点为第一个节点   很重要!!!  */
- (void)resetIterator;

@end
