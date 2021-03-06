// 
// FLWsdlComplexType.h
// 
// DO NOT MODIFY!! Modifications will be overwritten.
// Generated by: Mike Fullerton @ 6/2/13 5:36 PM with PackMule (3.0.0.100)
// 
// Project: FishLamp CodeWriter WSDL Interpreter
// Schema: FLWsdlObjects
// 
// Copyright 2013 (c) GreenTongue Software, LLC
// 

#import "FLModelObject.h"

@class FLWsdlSequenceArray;
@class FLWsdlComplexContent;
@class FLWsdlChoiceArray;

@interface FLWsdlComplexType : FLModelObject {
@private
    FLWsdlSequenceArray* _sequence;
    FLWsdlChoiceArray* _choice;
    NSString* _name;
    FLWsdlComplexContent* _complexContent;
}

@property (readwrite, strong, nonatomic) FLWsdlChoiceArray* choice;
@property (readwrite, strong, nonatomic) FLWsdlComplexContent* complexContent;
@property (readwrite, strong, nonatomic) NSString* name;
@property (readwrite, strong, nonatomic) FLWsdlSequenceArray* sequence;

+ (FLWsdlComplexType*) wsdlComplexType;

@end
