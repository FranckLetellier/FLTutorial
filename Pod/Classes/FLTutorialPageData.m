//
//  FLTutorialPageData.m
//  Pods
//
//  Created by Franck LETELLIER on 06/03/2016.
//
//

#import "FLTutorialPageData.h"

@implementation FLTutorialPageData

+(FLTutorialPageData*)tutorialPageWithImageName:(NSString*)image
                                       iconName:(NSString*)icon
                                           text:(NSString*)text
                                         offset:(NSInteger)offset
{
    FLTutorialPageData* page = [[self alloc] init];
    //This is wrong as it consume a lot of memory
    //We need to use initWithCGImage and use the scaling factor
    //And remove them from the asset catalogue (cannot be load otherwise)
    page.pageImage = [UIImage imageNamed:image];
    //NSString* path = [[NSBundle mainBundle] pathForResource:image ofType:nil];
    //page.image = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:image ofType:nil]];
    page.pageIcon = [UIImage imageNamed:icon];
    page.pageText = text;
    page.yOffset = offset;
    return  page;
}

@end


@implementation FLTutorialData

@end