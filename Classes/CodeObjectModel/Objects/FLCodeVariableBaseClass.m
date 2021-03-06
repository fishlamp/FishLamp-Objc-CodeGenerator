// 
// FLCodeVariableBaseClass.m
// 
// DO NOT MODIFY!! Modifications will be overwritten.
// Generated by: Mike Fullerton @ 6/27/13 5:17 PM with PackMule (3.0.0.31)
// 
// Project: FishLamp Code Generator
// 
// Copyright 2013 (c) GreenTongue Software LLC, Mike Fullerton
// The FishLamp Framework is released under the MIT License: http://fishlamp.com/license
// 

#import "FLCodeVariableBaseClass.h"
#import "FLModelObject.h"

@implementation FLCodeVariableBaseClass

+ (id) codeVariable {
    return FLAutorelease([[[self class] alloc] init]);
}
#if FL_MRC
- (void) dealloc {
    [_name release];
    [_type release];
    [super dealloc];
}
#endif
@synthesize name = _name;
@synthesize type = _type;

@end
