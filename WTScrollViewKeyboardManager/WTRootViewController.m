//
//  WTRootViewController.m
//  WTScrollViewKeyboardManager
//
//  Created by Andrew Carter on 10/7/13.
//  Copyright (c) 2013 WillowTree Apps. All rights reserved.
//

#import "WTRootViewController.h"

#import "WTScrollViewKeyboardManager.h"

@interface WTRootViewController ()

@property (nonatomic, weak) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) WTScrollViewKeyboardManager *keyboardManager;
@property (nonatomic, strong) IBOutletCollection(UITextField) NSArray *textFields;

@end

@implementation WTRootViewController

#pragma mark - UIViewController Overrides

- (void)viewDidLoad
{
    [self setupKeyboardManager];
}

- (void)viewDidLayoutSubviews
{
    [[self scrollView] setContentSize:CGSizeMake(CGRectGetWidth([[self scrollView] bounds]), CGRectGetHeight([[self scrollView] bounds]))];
}

#pragma mark - Instance Methods

- (void)setupKeyboardManager
{
    WTScrollViewKeyboardManager *manager = [[WTScrollViewKeyboardManager alloc] initWithScrollView:[self scrollView] viewController:self];
    [self setKeyboardManager:manager];
    
    [self setKeyboardManager:[[WTScrollViewKeyboardManager alloc] initWithScrollView:[self scrollView] viewController:self]];
}

- (IBAction)submitButtonPressed:(id)sender
{
    [[self textFields] makeObjectsPerformSelector:@selector(resignFirstResponder)];
}

@end
