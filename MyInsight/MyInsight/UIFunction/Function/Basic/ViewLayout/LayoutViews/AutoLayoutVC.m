//
//  AutoLayoutVC.m
//  MyInsight
//
//  Created by SongMenglong on 2018/4/21.
//  Copyright © 2018年 SongMenglong. All rights reserved.
//

#import "AutoLayoutVC.h"

@interface AutoLayoutVC ()

@end

@implementation AutoLayoutVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"原生AutoLayout";
    
    [self autoLayoutView];
}

- (void)autoLayoutView {
    UIView *blueView = [[UIView alloc] init];
    blueView.backgroundColor = [UIColor blueColor];
    // 不要将AutoresizingMask转为Autolayout的约束
    blueView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:blueView];
    
    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = [UIColor redColor];
    // 不要将AutoresizingMask转为Autolayout的约束
    redView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:redView];
    
    /************************** 蓝色 **************************/
    // 添加高度约束:40
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:blueView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0 constant:40.0];
    [blueView addConstraint:heightConstraint];
    
    // 添加左边约束：blueView的左边距离父控件左边有20的间距
    NSLayoutConstraint *leftConstraint = [NSLayoutConstraint constraintWithItem:blueView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:20];
    [self.view addConstraint:leftConstraint];
    
    // 添加右边约束：blueView的右边距离父控件右边有20的间距
    NSLayoutConstraint *rightConstraint = [NSLayoutConstraint constraintWithItem:blueView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.0 constant:-20];
    [self.view addConstraint:rightConstraint];
    
    // 添加顶部约束：blueView的顶部距离父控件顶部有100的间距
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:blueView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:100];
    [self.view addConstraint:topConstraint];
    
    /************************** 红色 **************************/
    // 添加高度约束:蓝色等高
    NSLayoutConstraint *heightConstraint2 = [NSLayoutConstraint constraintWithItem:redView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:blueView attribute:NSLayoutAttributeHeight multiplier:1.0 constant:0];
    [self.view addConstraint:heightConstraint2];
    
    // 添加左边约束：redView的左边 == 父控件的中心x
    NSLayoutConstraint *leftConstraint2 = [NSLayoutConstraint constraintWithItem:redView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0];
    [self.view addConstraint:leftConstraint2];
    
    // 添加顶部约束：redView的顶部距离blueView的底部有20的间距
    NSLayoutConstraint *topConstraint2 = [NSLayoutConstraint constraintWithItem:redView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:blueView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:20];
    [self.view addConstraint:topConstraint2];
    
    // 添加右边约束：redView的右边 == blueView的右边
    NSLayoutConstraint *rightConstraint2 = [NSLayoutConstraint constraintWithItem:redView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:blueView attribute:NSLayoutAttributeRight multiplier:1.0 constant:0];
    [self.view addConstraint:rightConstraint2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
