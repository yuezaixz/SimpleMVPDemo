//
//  ViewController.h
//  SimpleMVCDemo
//
//  Created by 吴迪玮 on 16/1/20.
//  Copyright © 2016年 DNT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SamplePresenter.h"

@interface ViewController : UIViewController<SampleViewInterface>

@property (strong, nonatomic) id<SamplePresenter> presenter;

@end

