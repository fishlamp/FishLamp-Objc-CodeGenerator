// 
// FLCodeEnumTypeBaseClass.m
// 
// DO NOT MODIFY!! Modifications will be overwritten.
// Generated by: Mike Fullerton @ 6/19/13 3:25 PM with PackMule (3.0.0.29)
// 
// Project: FishLamp Code Generator
// 
// Copyright 2013 (c) GreenTongue Software LLC, Mike Fullerton
// The FishLamp Framework is released under the MIT License: http://fishlamp.com/license
// 

#import "FLCodeEnum.h"
#import "FLModelObject.h"
#import "FLCodeEnumTypeBaseClass.h"
#import "FLObjectDescriber.h"

@implementation FLCodeEnumTypeBaseClass

+ (id) codeEnumType {
    return FLAutorelease([[[self class] alloc] init]);
}
#if FL_MRC
- (void) dealloc {
    [_name release];
    [_enums release];
    [super dealloc];
}
#endif
+ (void) didRegisterObjectDescriber:(FLObjectDescriber*) describer {
    [describer addContainerType:[FLPropertyDescriber propertyDescriber:@"enum" propertyClass:[FLCodeEnum class]] forContainerProperty:@"enums"];
}
FLSynthesizeLazyGetter(enums, NSMutableArray, _enums);
@synthesize enums = _enums;
@synthesize name = _name;

@end
