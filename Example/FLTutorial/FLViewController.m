//
//  FLViewController.m
//  FLTutorial
//
//  Created by Franck LETELLIER on 03/03/2016.
//  Copyright (c) 2016 Franck LETELLIER. All rights reserved.
//

#import "FLViewController.h"
#import <FLTutorial/FLTutorial.h>


@interface FLViewController ()<FLTutorialViewControllerDelegate,FLTutorialViewControllerDataSource>

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
    tutorialVC.datasource = self;
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

#pragma mark - FLTutorialViewControllerDataSource method
-(NSInteger)numberOfPageInTutorialViewController:(FLTutorialViewController*) tutorial
{
    return 2;
}

-(FLTutorialPageData*)tutorialViewController:(FLTutorialViewController*) tutorial
                            pageDataForIndex:(NSInteger)index
{
    FLTutorialPageData* pageData;
    pageData = [FLTutorialPageData tutorialPageWithImageName:@"img_page_1"
                                                    iconName:@"icon_page_1"
                                                        text:@"blabla"
                                                      offset:0];
    return pageData;
}


@end
