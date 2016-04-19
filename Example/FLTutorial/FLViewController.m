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

-(NSString*)closeButtonTextForTutorialViewController:(FLTutorialViewController*) tutorial;
{
    return @"Fermer";
}

-(UIColor*)foregroundColorForTutorialViewController:(FLTutorialViewController*) tutorial;
{
    return [UIColor redColor];
}

-(UIColor*)backgroundColorColorForTutorialViewController:(FLTutorialViewController*) tutorial;
{
    return [UIColor blueColor];
}

-(void)tutorialViewController:(FLTutorialViewController*) tutorial
       pageControlToCustomize:(UIPageControl*)pageControl
{
    pageControl.pageIndicatorTintColor = [UIColor whiteColor];
    pageControl.currentPageIndicatorTintColor = [UIColor greenColor];
}

#pragma mark - FLTutorialViewControllerDataSource method
-(NSInteger)numberOfPageInTutorialViewController:(FLTutorialViewController*) tutorial
{
    return 3;
}

-(FLTutorialPageData*)tutorialViewController:(FLTutorialViewController*) tutorial
                            pageDataForIndex:(NSInteger)index
{
    FLTutorialPageData* pageData;
    //This is wrong as it consume a lot of memory
    //We need to use initWithCGImage and use the scaling factor
    //And remove them from the asset catalogue (cannot be load otherwise)
    
    //NSString* path = [[NSBundle mainBundle] pathForResource:image ofType:nil];
    //page.image = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:image ofType:nil]];
    UIImage* pageImage = [UIImage imageNamed:@"img_page_1"];
    UIImage* iconImage = [UIImage imageNamed:@"icon_page_1"];
    
    pageData = [FLTutorialPageData tutorialPageWithImage:pageImage
                                                    icon:iconImage
                                                    text:@"blabla"
                                                        offset:0];
    return pageData;
}


@end
