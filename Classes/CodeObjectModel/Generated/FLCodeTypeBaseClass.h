// 
// FLCodeTypeBaseClass.h
// 
// DO NOT MODIFY!! Modifications will be overwritten.
// Generated by: Mike Fullerton @ 6/15/13 4:24 PM with PackMule (3.0.0.29)
// 
// Project: FishLamp Code Generator
// 
// Copyright 2013 (c) GreenTongue Software LLC, Mike Fullerton
// The FishLamp Framework is released under the MIT License: http://fishlamp.com/license
// 

#import "FLModelObject.h"

@interface FLCodeTypeBaseClass : FLModelObject {
@private
    NSString* _typeNameUnmodified;
    NSString* _typeName;
    NSString* _defaultValue;
}

@property (readwrite, strong, nonatomic) NSString* defaultValue;
@property (readwrite, strong, nonatomic) NSString* typeName;
@property (readwrite, strong, nonatomic) NSString* typeNameUnmodified;

@end
