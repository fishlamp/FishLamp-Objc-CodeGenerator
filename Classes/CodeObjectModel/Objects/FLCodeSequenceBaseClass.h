// 
// FLCodeSequenceBaseClass.h
// 
// DO NOT MODIFY!! Modifications will be overwritten.
// Generated by: Mike Fullerton @ 6/27/13 5:44 PM with PackMule (3.0.0.31)
// 
// Project: FishLamp Code Generator
// 
// Copyright 2013 (c) GreenTongue Software LLC, Mike Fullerton
// The FishLamp Framework is released under the MIT License: http://fishlamp.com/license
// 

#import "FLCodeElement.h"

@class FLObjectDescriber;

@interface FLCodeSequenceBaseClass : FLCodeElement {
@private
    NSMutableArray* _statements;
}

@property (readwrite, strong, nonatomic) NSMutableArray* statements;

+ (id) codeSequence;

@end
