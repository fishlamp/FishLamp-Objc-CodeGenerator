// 
// FLCodeObjectCategoryBaseClass.h
// 
// DO NOT MODIFY!! Modifications will be overwritten.
// Generated by: Mike Fullerton @ 6/19/13 3:25 PM with PackMule (3.0.0.29)
// 
// Project: FishLamp Code Generator
// 
// Copyright 2013 (c) GreenTongue Software LLC, Mike Fullerton
// The FishLamp Framework is released under the MIT License: http://fishlamp.com/license
// 

#import "FLModelObject.h"

@class FLObjectDescriber;
@class FLCodeMethod;
@class FLCodeProperty;

@interface FLCodeObjectCategoryBaseClass : FLModelObject {
@private
    NSString* _objectName;
    NSMutableArray* _properties;
    NSMutableArray* _methods;
    NSString* _categoryName;
}

@property (readwrite, strong, nonatomic) NSString* categoryName;
@property (readwrite, strong, nonatomic) NSMutableArray* methods;
@property (readwrite, strong, nonatomic) NSString* objectName;
@property (readwrite, strong, nonatomic) NSMutableArray* properties;

+ (id) codeObjectCategory;

@end
