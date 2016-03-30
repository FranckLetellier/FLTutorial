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


+(FLTutorialPageData*)tutorialPageWithImage:(NSString*)image
                                       icon:(NSString*)icon
                                       text:(NSString*)text
                                     offset:(NSInteger)offset;

@end

@interface FLTutorialData : NSObject

#pragma mark - Properties
@property (nonatomic, readonly) UIImage* startingImage;
@property (nonatomic, readonly) NSArray<FLTutorialPageData*>* pages;

@end
