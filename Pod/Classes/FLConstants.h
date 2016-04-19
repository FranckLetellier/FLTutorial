//
//  FLConstants.h
//  Pods
//
//  Created by Franck LETELLIER on 14/04/2016.
//
//

#define _Tb(key) \
    NSLocalizedStringFromTableInBundle(key,nil,RESSOURCE_BUNDLE(@"FLTutorial"),)

#define POD_BUNDLE [NSBundle bundleForClass:[self class]]
#define RESSOURCE_BUNDLE(x) [NSBundle bundleWithURL:[POD_BUNDLE URLForResource:x withExtension:@"bundle"]]

