// 
// FLCodeCreateObject.m
// 
// Modifications are expected. File will not be overwritten.
// Generated by: Mike Fullerton @ 6/16/13 1:02 PM with PackMule (3.0.0.29)
// 
// Project: FishLamp
// 
// Copyright 2013 (c) GreenTongue Software LLC, Mike Fullerton
// The FishLamp Framework is released under the MIT License: http://fishlamp.com/license
// 

#import "FLCodeCreateObjectBaseClass.h"
#import "FLCodeCreateObject.h"

@implementation FLCodeCreateObject


+ (id) codeCreateObject:(id) subcode {
    return FLAutorelease([[[self class] alloc] initWithCode:subcode]);
}

+ (id) codeCreateObject {
    return FLAutorelease([[[self class] alloc] init]);
}
#if FL_MRC
- (void) dealloc {
    [super dealloc];
}
#endif

@end
