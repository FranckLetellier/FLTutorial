//
//  FLTutorialTextView.m
//  Pods
//
//  Created by Franck LETELLIER on 06/03/2016.
//
//

#import "FLTutorialTextView.h"
#import "FLTutorialPageData.h"


@interface FLTutorialTextView ()

//Not KVO complient
//assert(<#e#>)
@property (nonatomic, weak) IBOutlet UILabel* label;
@property (nonatomic, weak) IBOutlet UIImageView* imageV;

@end

@implementation FLTutorialTextView

+(instancetype)tutorialTextView
{
    Class textVClass = [FLTutorialTextView class];
    UINib* nib = [UINib nibWithNibName:NSStringFromClass(textVClass) bundle:[NSBundle bundleForClass:textVClass]];
        
    NSArray* topLevelObjects = [nib instantiateWithOwner:nil options:nil];
    FLTutorialTextView* foundView = nil;
    for (id object in topLevelObjects)
    {
        if ([object isKindOfClass:self])
        {
            foundView = object;
            break;
        }
    }
    return foundView;
}

-(void) setupWithHelpPage:(FLTutorialPageData*)page
{
    self.label.text = page.pageText;
    self.imageV.image = page.pageIcon;
}

@end
