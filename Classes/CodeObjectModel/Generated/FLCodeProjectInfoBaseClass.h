// 
// FLCodeProjectInfoBaseClass.h
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

@class FLCodeCompany;

@interface FLCodeProjectInfoBaseClass : FLModelObject {
@private
    FLCodeCompany* _organization;
    NSString* _license;
    NSString* _projectName;
    NSString* _schemaName;
}

@property (readwrite, strong, nonatomic) NSString* license;
@property (readwrite, strong, nonatomic) FLCodeCompany* organization;
@property (readwrite, strong, nonatomic) NSString* projectName;
@property (readwrite, strong, nonatomic) NSString* schemaName;

+ (id) codeProjectInfo;

@end
