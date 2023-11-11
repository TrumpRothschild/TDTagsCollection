//
//  TTGExample5ViewController.m
//  TTGTagCollectionView
//
//  Created by trumprothschild on 2016/10/16.
//  Copyright (c) 2019 trumprothschild. All rights reserved.
//

#import "TTGExample5ViewController.h"
#import <TDTagsCollection/TTGTextTagCollectionView.h>

@interface TTGExample5ViewController ()
@property (weak, nonatomic) IBOutlet TTGTextTagCollectionView *oneLineTagView;
@property (weak, nonatomic) IBOutlet TTGTextTagCollectionView *twoLineTagView;
@property (weak, nonatomic) IBOutlet TTGTextTagCollectionView *threeLineTagView;

@end

@implementation TTGExample5ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _oneLineTagView.scrollDirection = TTGTagCollectionScrollDirectionHorizontal;
    _twoLineTagView.scrollDirection = TTGTagCollectionScrollDirectionHorizontal;
    _threeLineTagView.scrollDirection = TTGTagCollectionScrollDirectionHorizontal;
    
    _oneLineTagView.alignment = TTGTagCollectionAlignmentFillByExpandingWidth;
    _twoLineTagView.alignment = TTGTagCollectionAlignmentFillByExpandingWidth;
    _threeLineTagView.alignment = TTGTagCollectionAlignmentFillByExpandingWidth;

    _oneLineTagView.numberOfLines = 1;
    _twoLineTagView.numberOfLines = 2;
    _threeLineTagView.numberOfLines = 3;

    [_oneLineTagView addTags:[self generateTags]];
    [_oneLineTagView reload];
    
    [_twoLineTagView addTags:[self generateTags]];
    [_twoLineTagView reload];
    
    [_threeLineTagView addTags:[self generateTags]];
    [_threeLineTagView reload];
}

- (NSArray<TTGTextTag *> *)generateTags {
    NSArray *tags = @[@"AutoLayout", @"dynamically", @"calculates", @"the", @"size", @"and", @"position",
                      @"of", @"all", @"the", @"views", @"in", @"your", @"view", @"hierarchy", @"based",
                      @"on", @"constraints", @"placed", @"on", @"those", @"views"];
    
    NSMutableArray *textTags = [NSMutableArray new];
    for (NSString *string in tags) {
        TTGTextTag *textTag = [TTGTextTag tagWithContent:[TTGTextTagStringContent contentWithText:string] style:[TTGTextTagStyle new]];
        textTag.selectedStyle.backgroundColor = [UIColor greenColor];
        [textTags addObject:textTag];
    }
    
    return textTags;
}

@end
