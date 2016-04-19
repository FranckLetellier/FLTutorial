//
//  FLTutorialPageData.h
//  Pods
//
//  Created by Franck LETELLIER on 06/03/2016.
//
//

#import <Foundation/Foundation.h>

@interface FLTutorialPageData : NSObject


@property (nonatomic, strong) UIImage* pageImage;
@property (nonatomic, strong) UIImage* pageIcon;
@property (nonatomic, strong) NSString* pageText;
@property (nonatomic, assign) NSInteger yOffset;


+(FLTutorialPageData*)tutorialPageWithImage:(UIImage*)image
                                       icon:(UIImage*)icon
                                       text:(NSString*)text
                                     offset:(NSInteger)offset;

@end

@interface FLTutorialData : NSObject

#pragma mark - Properties
@property (nonatomic, strong) UIImage* startingImage;
@property (nonatomic, strong) NSArray<FLTutorialPageData*>* pages;

@end
