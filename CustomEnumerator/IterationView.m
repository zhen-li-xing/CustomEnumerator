//
//  IterationView.m
//  CustomEnumerator
//
//  Created by 李震 on 2018/6/24.
//  Copyright © 2018年 李震. All rights reserved.
//

#import "IterationView.h"
#import "LinkedList.h"
#import "Node.h"

@interface IterationView ()

/**  */
@property (nonatomic,strong)UIView * bgView;
/**  */
@property (nonatomic,strong)UIImageView * imageView;
/**  */
@property (nonatomic,strong)UIButton * btn;
/**  */
@property (nonatomic,strong)LinkedList * linkedList;
/**  */
@property (nonatomic,strong)Node * currentNode;

@end

@implementation IterationView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        [self creatSubViews];
    }
    return self;
}

- (void)creatSubViews
{
    self.bgView.frame = self.bounds;
    [self addSubview:self.bgView];
    self.imageView.frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height - 100.f);
    [self.bgView addSubview:self.imageView];
    self.btn.frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height - 200.f);
    [self.imageView addSubview:self.btn];
    
    
    [self.linkedList addData:self.bgView];
    [self.linkedList addData:self.imageView];
    [self.linkedList addData:self.btn];
    
    self.currentNode = self.linkedList.headNode;
}

- (id)nextObject
{
    self.currentNode = self.currentNode.nextNode;
    return self.currentNode;
}

- (void)resetIterator
{
    self.currentNode = self.linkedList.headNode;
}

- (UIView *)bgView
{
    if (!_bgView) {
        _bgView = [UIView new];
        _bgView.backgroundColor = [UIColor orangeColor];
    }
    return _bgView;
}
- (UIImageView *)imageView
{
    if (!_imageView) {
        _imageView = [UIImageView new];
        _imageView.backgroundColor = [UIColor yellowColor];
    }
    return _imageView;
}
- (UIButton *)btn
{
    if (!_btn) {
        _btn = [UIButton buttonWithType:UIButtonTypeCustom];
        _btn.backgroundColor = [UIColor redColor];
    }
    return _btn;
}
- (LinkedList *)linkedList
{
    if (!_linkedList) {
        _linkedList = [LinkedList new];
    }
    return _linkedList;
}

@end
