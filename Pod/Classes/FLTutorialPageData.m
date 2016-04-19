//
//  FLTutorialPageData.m
//  Pods
//
//  Created by Franck LETELLIER on 06/03/2016.
//
//

#import "FLTutorialPageData.h"

@implementation FLTutorialPageData

+(FLTutorialPageData*)tutorialPageWithImage:(UIImage *)image
                                       icon:(UIImage *)icon
                                       text:(NSString *)text
                                     offset:(NSInteger)offset
{
    FLTutorialPageData* page = [[self alloc] init];

    page.pageImage = image;
    page.pageIcon = icon;
    page.pageText = text;
    page.yOffset = offset;
    return  page;
}

@end


@implementation FLTutorialData

@end