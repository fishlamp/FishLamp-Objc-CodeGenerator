// 
// FLCodeObjectMemberType.h
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

#import "FLCodeVariable.h"


@interface FLCodeObjectMemberType : FLCodeVariable<NSCopying> {
@private
    BOOL _isStatic;
    BOOL _isWeak;
}

@property (readwrite, assign, nonatomic) BOOL isStatic;
@property (readwrite, assign, nonatomic) BOOL isWeak;

+ (FLCodeObjectMemberType*) codeObjectMemberType;

@end
