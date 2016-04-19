//
//  FLTutorialViewController.h
//  Pods
//
//  Created by Franck LETELLIER on 06/03/2016.
//
//

#import <UIKit/UIKit.h>

@class FLTutorialViewController;
@class FLTutorialPageData;

@protocol FLTutorialViewControllerDelegate <NSObject>

@optional
-(NSString*)closeButtonTextForTutorialViewController:(FLTutorialViewController*) tutorial;
-(UIColor*)foregroundColorForTutorialViewController:(FLTutorialViewController*) tutorial;
-(UIColor*)backgroundColorColorForTutorialViewController:(FLTutorialViewController*) tutorial;
-(UIColor*)pageControlActiveColorForTutorialViewController:(FLTutorialViewController*) tutorial;
-(void)tutorialViewController:(FLTutorialViewController*) tutorial
         pageControlToCustomize:(UIPageControl*)pageControl;

-(void)tutorialViewController:(FLTutorialViewController*) tutorial
              didArriveAtPage:(NSUInteger)index;

-(void)tutorialViewControllerDidClose:(FLTutorialViewController*) tutorial;

@end

@protocol FLTutorialViewControllerDataSource <NSObject>

@required
-(NSInteger)numberOfPageInTutorialViewController:(FLTutorialViewController*) tutorial;
-(FLTutorialPageData*)tutorialViewController:(FLTutorialViewController*) tutorial
                            pageDataForIndex:(NSInteger)index;
@optional
-(NSString*)launchImageInTutorialViewController:(FLTutorialViewController*) tutorial;

@end

@interface FLTutorialViewController : UIViewController

@property (nonatomic, weak) id<FLTutorialViewControllerDelegate> delegate;
@property (nonatomic, weak) id<FLTutorialViewControllerDataSource> datasource;

+(instancetype) tutorialViewController;

@end
