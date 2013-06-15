// 
// FLDataType.h
// 
// DO NOT MODIFY!! Modifications will be overwritten.
// Generated by: Mike Fullerton @ 6/15/13 2:56 PM with PackMule (3.0.0.29)
// 
// Project: FishLamp Code Generator
// 
// Copyright 2013 (c) GreenTongue Software LLC, Mike Fullerton
// The FishLamp Framework is released under the MIT License: http://fishlamp.com/license
// 

#import "FLTypeSpecificEnumSet.h"

typedef enum {
    FLDataTypeObject = 0,
    FLDataTypeValue = 1,
    FLDataTypeEnum = 2,
    FLDataTypeImmuteable = 3,
} FLDataType;

#define kFLDataTypeEnum @"Enum"
#define kFLDataTypeImmuteable @"Immuteable"
#define kFLDataTypeValue @"Value"
#define kFLDataTypeObject @"Object"

extern NSString* FLDataTypeStringFromEnum(FLDataType theEnum);
extern FLDataType FLDataTypeEnumFromString(NSString* theString);

@interface FLDataTypeEnumSet : FLTypeSpecificEnumSet
+ (id) enumSet;
+ (id) enumSet:(NSString*) concatenatedEnumString;
@end
