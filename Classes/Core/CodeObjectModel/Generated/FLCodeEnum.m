// 
// FLCodeEnum.m
// 
// DO NOT MODIFY!! Modifications will be overwritten.
// Generated by: Mike Fullerton @ 6/3/13 10:33 AM with PackMule (3.0.0.1)
// 
// Project: FishLamp Code Generator
// Schema: ObjectModel
// 
// Copyright 2013 (c) GreenTongue Software LLC, Mike Fullerton
// The FishLamp Framework is released under the MIT License: http://fishlamp.com/license
// 


#import "FLCodeEnum.h"
#import "FLModelObject.h"

@implementation FLCodeEnum

+ (FLCodeEnum*) codeEnum {
    return FLAutorelease([[[self class] alloc] init]);
}
#if FL_MRC
- (void) dealloc {
    [_name release];
    [_stringValue release];
    [super dealloc];
}
#endif
@synthesize name = _name;
@synthesize stringValue = _stringValue;
@synthesize value = _value;

@end
