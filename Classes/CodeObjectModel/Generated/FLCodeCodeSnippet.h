// 
// FLCodeCodeSnippet.h
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


@interface FLCodeCodeSnippet : FLModelObject<NSCopying> {
@private
    NSString* _scopedBy;
    NSString* _comment;
    NSString* _name;
    NSString* _lines;
}

@property (readwrite, strong, nonatomic) NSString* comment;
@property (readwrite, strong, nonatomic) NSString* lines;
@property (readwrite, strong, nonatomic) NSString* name;
@property (readwrite, strong, nonatomic) NSString* scopedBy;

+ (FLCodeCodeSnippet*) codeCodeSnippet;

@end
