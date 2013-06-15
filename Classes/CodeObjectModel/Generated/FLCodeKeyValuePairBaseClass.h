// 
// FLCodeKeyValuePairBaseClass.h
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

@interface FLCodeKeyValuePairBaseClass : FLModelObject {
@private
    NSString* _key;
    NSString* _value;
}

@property (readwrite, strong, nonatomic) NSString* key;
@property (readwrite, strong, nonatomic) NSString* value;

@end
