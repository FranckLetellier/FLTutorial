//
//  FLTutorialViewController.h
//  Pods
//
//  Created by Franck LETELLIER on 06/03/2016.
//
//

#import <UIKit/UIKit.h>

@class FLTutorialViewController;

@protocol FLTutorialViewControllerDelegate <NSObject>

-(void)tutorialViewController:(FLTutorialViewController*) tutorial
              didArriveAtPage:(NSUInteger)index;

-(void)tutorialViewControllerDidClose:(FLTutorialViewController*) tutorial;

@end

@interface FLTutorialViewController : UIViewController

@property (nonatomic, weak) id<FLTutorialViewControllerDelegate> delegate;

+(instancetype) tutorialViewController;

@end
