//
//  FLViewController.m
//  FLTutorial
//
//  Created by Franck LETELLIER on 03/03/2016.
//  Copyright (c) 2016 Franck LETELLIER. All rights reserved.
//

#import "FLViewController.h"
#import <FLTutorial/FLTutorial.h>


@interface FLViewController ()<FLTutorialViewControllerDelegate>

@end

@implementation FLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
}


-(IBAction)launchTutorialAction:(id)sender
{
    FLTutorialViewController* tutorialVC = [FLTutorialViewController tutorialViewController];
    tutorialVC.delegate = self;
    [self presentViewController:tutorialVC animated:YES completion:nil];
}

#pragma mark - FLTutorialViewControllerDelegate method
-(void)tutorialViewController:(FLTutorialViewController*) tutorial
              didArriveAtPage:(NSUInteger)index
{
    
}

-(void)tutorialViewControllerDidClose:(FLTutorialViewController*) tutorial
{
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
