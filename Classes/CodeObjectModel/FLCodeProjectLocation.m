//
//  FLInputDescriptor.m
//  Whittle
//
//  Created by Mike Fullerton on 6/27/12.
//  Copyright (c) 2012 GreenTongue Software. All rights reserved.
//

#import "FLCodeProjectLocation.h"
#import "FLCodeImport.h"

@interface FLCodeProjectLocation ()
@property (readwrite, strong, nonatomic) NSURL* URL;
@property (readwrite, assign, nonatomic) FLCodeProjectLocationType locationType;
@end

@implementation FLCodeProjectLocation

@synthesize URL = _url;
@synthesize locationType = _locationType;

- (id) initWithURL:(NSURL*) url 
      resourceType:(FLCodeProjectLocationType) resourceType {
      
    self = [super init];
    if(self) {
        self.URL = url;
        self.locationType = resourceType;
    }
    
    return self;
}

+ (FLCodeProjectLocation*) codeProjectLocation:(NSURL*) url
                                  resourceType:(FLCodeProjectLocationType) resourceType {
    return FLAutorelease([[FLCodeProjectLocation alloc] initWithURL:url resourceType:resourceType]);
}
                             
#if FL_MRC 
- (void) dealloc {
    [_url release];
    [super dealloc];
}
#endif

- (BOOL) hasFileExtension:(NSString*) fileExtension {
    if([self isLocationType:FLCodeProjectLocationTypeFile]) {
        return FLStringsAreEqualCaseInsensitive( [_url pathExtension], fileExtension); 
    }
    
    return NO;
}

- (BOOL) isLocationType:(FLCodeProjectLocationType) locationType {
    return FLTestBits(locationType, _locationType); 
}

- (NSData*) loadDataInResource {
    
           
//        if(![[NSFileManager defaultManager] fileExistsAtPath:path]) {
//            FLThrowErrorCodeWithComment(FLErrorDomain, FLCodeProjectNotFound, @"Project not found: %@", path);
//        }
    NSError* err = nil;
	NSData* data = [NSData dataWithContentsOfURL:_url options:NSDataReadingUncached error:&err];
    FLThrowIfError(err);
    FLAssertNotNil(data);
    
    return data;
}

+ (FLCodeProjectLocation*) codeProjectLocationWithImport:(FLCodeImport*) import
                                       projectFolderPath:(NSString*) projectFolderPath {
    
    FLCodeInputTypeEnumSet* enums = import.typeEnumSet;
    FLCodeProjectLocationType type = FLCodeProjectLocationTypeNone;

    if(!enums.count) {
        [enums addEnum:FLCodeInputTypeFile];
    }

    NSURL* url = nil;

    for(FLEnumPair* number in enums) {
        switch(number.enumValue) {
            case FLCodeInputTypeFile:
                type |= FLCodeProjectLocationTypeFile;
                url = [NSURL fileURLWithPath:[projectFolderPath stringByAppendingPathComponent:import.path]];
            break;

            case FLCodeInputTypeHttp:
                type |= FLCodeProjectLocationTypeHttp;
                url = [NSURL URLWithString:import.path];
            break;

            case FLCodeInputTypeWsdl:
                type |= FLCodeProjectLocationTypeWsdl;
                url = [NSURL URLWithString:import.path];
            break;

            default:
                break;
        }
    }

    FLAssertIsNotNil(url);

    return [FLCodeProjectLocation codeProjectLocation:url resourceType:type];
}

@end
