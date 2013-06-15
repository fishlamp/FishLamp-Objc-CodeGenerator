// 
// FLCodeArray.h
// 
// DO NOT MODIFY!! Modifications will be overwritten.
// Generated by: Mike Fullerton @ 6/15/13 2:56 PM with PackMule (3.0.0.29)
// 
// Project: FishLamp Code Generator
// 
// Copyright 2013 (c) GreenTongue Software LLC, Mike Fullerton
// The FishLamp Framework is released under the MIT License: http://fishlamp.com/license
// 

#import "FLModelObject.h"

@class FLCodeArrayType;
@class FLObjectDescriber;

@interface FLCodeArray : FLModelObject<NSCopying> {
@private
    NSString* _name;
    NSMutableArray* _types;
}

@property (readwrite, strong, nonatomic) NSString* name;
@property (readwrite, strong, nonatomic) NSMutableArray* types;

+ (id) codeArray;

@end
