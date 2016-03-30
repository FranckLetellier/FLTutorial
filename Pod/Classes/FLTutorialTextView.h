//
//  FLTutorialTextView.h
//  Pods
//
//  Created by Franck LETELLIER on 06/03/2016.
//
//

#import <UIKit/UIKit.h>

@class FLTutorialPageData;

@interface FLTutorialTextView : UIView

+(instancetype) tutorialTextView;

-(void) setupWithHelpPage:(FLTutorialPageData*)page;

@end
