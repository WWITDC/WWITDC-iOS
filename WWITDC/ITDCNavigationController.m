//
//  ITDCNavigationController.m
//  WWITDC
//
//  Created by Zeyu Jiang on 16/4/23.
//  Copyright © 2016年 WWITDC. All rights reserved.
//

#import "ITDCNavigationController.h"
#import "MainViewController.h"

@interface ITDCNavigationController ()

@end

@implementation ITDCNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBarHidden = YES;
    self.delegate = self;
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    [self interactivePopGestureRecognizerType];
}

#pragma mark - 转场动画

- (id <UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC{
    if (operation == UINavigationControllerOperationPush) {
        PushTransitionAnimation *pushTransitionAnimation = [PushTransitionAnimation new];
        return pushTransitionAnimation;
    }
    else if (operation == UINavigationControllerOperationPop) {
        PopTransitionAnimation *popTransitionAnimation = [PopTransitionAnimation new];
        return popTransitionAnimation;
    }
    return nil;
}

#pragma mark - 判断页面数，页面数>1时执行动画
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer{
    if (self.viewControllers.count > 1) {
        return YES;
    }
    else{
        return NO;
    }
}

#pragma mark- 添加百分比手势
- (id <UIViewControllerInteractiveTransitioning>)navigationController:(UINavigationController *)navigationController interactionControllerForAnimationController:(id<UIViewControllerAnimatedTransitioning>)animationController{
    PopTransitionAnimation *popTransitionAnimation = [PopTransitionAnimation new];
    if ([animationController isKindOfClass:[popTransitionAnimation class]]) {
        return self.percentDrivenInteractiveTransition;
    }
    return nil;
}

#pragma mark - 手势具体方法
- (void)panGestureRecognizer:(UIPanGestureRecognizer *)gesture{
    CGPoint point = [gesture translationInView:gesture.view];
    CGFloat progress = point.x / gesture.view.bounds.size.width;
    
    //限制progress始终大于0
    
    if (gesture.state == UIGestureRecognizerStateBegan) {
        self.percentDrivenInteractiveTransition = [[UIPercentDrivenInteractiveTransition alloc] init];
        [self popViewControllerAnimated:YES];
    }
    else if (gesture.state == UIGestureRecognizerStateChanged) {
        [self.percentDrivenInteractiveTransition updateInteractiveTransition:progress];
    }
    else if (gesture.state == UIGestureRecognizerStateCancelled || gesture.state == UIGestureRecognizerStateEnded) {
        //判断手势滑动距离是否超过屏幕的一半，如果超过一半则完成pop动画
        if (progress > 0.5) {
            [self.percentDrivenInteractiveTransition finishInteractiveTransition];
        }
        else{
            [self.percentDrivenInteractiveTransition cancelInteractiveTransition];
        }
        self.percentDrivenInteractiveTransition = nil;
    }
}

#pragma mark - 判断滑动返回手势方式
- (void)setInteractivePopGestureRecognizerType:(InteractivePopGestureRecognizerType)interactivePopGestureRecognizerType{
    switch (interactivePopGestureRecognizerType) {
        case InteractivePopGestureRecognizerNone:
            break;
        case InteractivePopGestureRecognizerEdge:
        {
            //添加边缘返回手势
            UIScreenEdgePanGestureRecognizer *edgePanGestureRecognizer = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureRecognizer:)];
            edgePanGestureRecognizer.edges = UIRectEdgeLeft;
            [self.view addGestureRecognizer:edgePanGestureRecognizer];
        }
            break;
        case InteractivePopGestureRecognizerFullScreen:
        {
            //添加全屏返回手势
            UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureRecognizer:)];
            [self.interactivePopGestureRecognizer.view addGestureRecognizer:panGestureRecognizer];
        }
            break;
        default:
            break;
    }
}

//

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end