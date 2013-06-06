// 
// FLCodeKeyValuePair.m
// 
// DO NOT MODIFY!! Modifications will be overwritten.
// Generated by: Mike Fullerton @ 6/5/13 6:37 PM with PackMule (3.0.0.20)
// 
// Project: FishLamp Code Generator
// Schema: ObjectModel
// 
// Copyright 2013 (c) GreenTongue Software LLC, Mike Fullerton
// The FishLamp Framework is released under the MIT License: http://fishlamp.com/license
// 


#import "FLModelObject.h"
#import "FLCodeKeyValuePair.h"

@implementation FLCodeKeyValuePair

+ (FLCodeKeyValuePair*) codeKeyValuePair {
    return FLAutorelease([[[self class] alloc] init]);
}
#if FL_MRC
- (void) dealloc {
    [_key release];
    [_value release];
    [super dealloc];
}
#endif
@synthesize key = _key;
@synthesize value = _value;

@end
