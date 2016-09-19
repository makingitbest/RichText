//
//  ViewController.m
//  RichText
//
//  Created by WangQiao on 16/9/17.
//  Copyright © 2016年 WangQiao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    NSString *text = @"撑着油纸伞，\n独自彷徨在悠长、悠长又寂寥的雨巷，\n我希望逢着一个丁香一样地结着愁怨的姑娘。\n她是有丁香一样的颜色，丁香一样的芬芳，丁香一样的忧愁，在雨中哀怨，哀怨又彷徨；\n她彷徨在这寂寥的雨巷，撑着油纸伞像我一样，\n像我一样地默默行着冷漠、凄清，又惆怅。\n她默默地走近，走近，又投出太息一般的眼光她飘过像梦一般地，像梦一般地凄婉迷茫。\n像梦中飘过一枝丁香地，我身旁飘过这个女郎；\n她默默地远了，远了，到了颓圮的篱墙，走尽这雨巷。\n在雨的哀曲里，消了她的颜色，散了她的芬芳，消散了，甚至她的太息般的眼光丁香般的惆怅。\n撑着油纸伞，独自彷徨在悠长、悠长又寂寥的雨巷，我希望飘过一个丁香一样地结着愁怨的姑娘。";
 
    // 设置字体
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:text];
    [string addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:13] range:NSMakeRange(0, text.length)];

    // 设置颜色
    [string addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, 25)];
    
    // 设置段落样式
    NSMutableParagraphStyle *style = [NSMutableParagraphStyle new];
    style.paragraphSpacing         = 20;
    style.lineSpacing              = 12;
    style.firstLineHeadIndent      = 26.f;
    [string addAttribute:NSParagraphStyleAttributeName value:style range:NSMakeRange(0, text.length)];
    
    self.label                = [[UILabel alloc] initWithFrame:self.view.bounds];
    self.label.textAlignment  = NSTextAlignmentCenter;
    self.label.attributedText = string;
    self.label.numberOfLines  = 0;
    [self.label sizeToFit];
    [self.view addSubview:self.label];
}

@end
