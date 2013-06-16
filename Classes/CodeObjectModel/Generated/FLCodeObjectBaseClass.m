// 
// FLCodeObjectBaseClass.m
// 
// DO NOT MODIFY!! Modifications will be overwritten.
// Generated by: Mike Fullerton @ 6/16/13 12:20 PM with PackMule (3.0.0.29)
// 
// Project: FishLamp Code Generator
// 
// Copyright 2013 (c) GreenTongue Software LLC, Mike Fullerton
// The FishLamp Framework is released under the MIT License: http://fishlamp.com/license
// 

#import "FLCodeProperty.h"
#import "FLCodeTypeDefinition.h"
#import "FLCodeMethod.h"
#import "FLCodeConstructor.h"
#import "FLCodeObjectCategory.h"
#import "FLModelObject.h"
#import "FLObjectDescriber.h"
#import "FLCodeStorageOptions.h"
#import "FLCodeVariable.h"
#import "FLCodeObjectBaseClass.h"

@implementation FLCodeObjectBaseClass

@synthesize canLazyCreate = _canLazyCreate;
FLSynthesizeLazyGetter(categories, NSMutableArray, _categories);
@synthesize categories = _categories;
@synthesize className = _className;
@synthesize comment = _comment;
FLSynthesizeLazyGetter(constructors, NSMutableArray, _constructors);
@synthesize constructors = _constructors;
#if FL_MRC
- (void) dealloc {
    [_methods release];
    [_categories release];
    [_protocols release];
    [_members release];
    [_superclass release];
    [_storageOptions release];
    [_comment release];
    [_className release];
    [_properties release];
    [_dependencies release];
    [_constructors release];
    [super dealloc];
}
#endif
FLSynthesizeLazyGetter(dependencies, NSMutableArray, _dependencies);
@synthesize dependencies = _dependencies;
+ (void) didRegisterObjectDescriber:(FLObjectDescriber*) describer {
    [describer addContainerType:[FLPropertyDescriber propertyDescriber:@"method" propertyClass:[FLCodeMethod class]] forContainerProperty:@"methods"];
    [describer addContainerType:[FLPropertyDescriber propertyDescriber:@"category" propertyClass:[FLCodeObjectCategory class]] forContainerProperty:@"categories"];
    [describer addContainerType:[FLPropertyDescriber propertyDescriber:@"member" propertyClass:[FLCodeVariable class]] forContainerProperty:@"members"];
    [describer addContainerType:[FLPropertyDescriber propertyDescriber:@"property" propertyClass:[FLCodeProperty class]] forContainerProperty:@"properties"];
    [describer addContainerType:[FLPropertyDescriber propertyDescriber:@"dependency" propertyClass:[FLCodeTypeDefinition class]] forContainerProperty:@"dependencies"];
    [describer addContainerType:[FLPropertyDescriber propertyDescriber:@"constructor" propertyClass:[FLCodeConstructor class]] forContainerProperty:@"constructors"];
}
@synthesize isSingleton = _isSingleton;
FLSynthesizeLazyGetter(members, NSMutableArray, _members);
@synthesize members = _members;
FLSynthesizeLazyGetter(methods, NSMutableArray, _methods);
@synthesize methods = _methods;
FLSynthesizeLazyGetter(properties, NSMutableArray, _properties);
@synthesize properties = _properties;
@synthesize protocols = _protocols;
FLSynthesizeLazyGetter(storageOptions, FLCodeStorageOptions, _storageOptions);
@synthesize storageOptions = _storageOptions;
@synthesize superclass = _superclass;

@end
