// 
// FLCodeImport.h
// 
// DO NOT MODIFY!! Modifications will be overwritten.
// Generated by: Mike Fullerton @ 6/14/13 2:45 PM with PackMule (3.0.0.29)
// 
// Project: ObjectModel
// Schema: ObjectModel
// 
// Copyright 2013 (c) GreenTongue Software LLC, Mike Fullerton
// The FishLamp Framework is released under the MIT License: http://fishlamp.com/license
// 

#import "FLModelObject.h"
#import "FLCodeInputType.h"

@class FLCodeInputTypeEnumSet;

@interface FLCodeImport : FLModelObject<NSCopying> {
@private
    NSString* _path;
    NSString* _type;
}

@property (readwrite, strong, nonatomic) NSString* path;
@property (readwrite, strong, nonatomic) NSString* type;
@property (readwrite, assign, nonatomic) FLCodeInputType typeEnum;
@property (readwrite, strong, nonatomic) FLCodeInputTypeEnumSet* typeEnumSet;

+ (FLCodeImport*) codeImport;

@end
