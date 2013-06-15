//
//  FLObjcCodeElement.m
//  CodeGenerator
//
//  Created by Mike Fullerton on 5/11/13.
//  Copyright (c) 2013 Mike Fullerton. All rights reserved.
//

#import "FLObjcCodeElement.h"
#import "FLObjcProject.h"
#import "FLObjcCodeBuilder.h"
#import "FLObjcFile.h"
#import "FLObjcFileHeader.h"

@implementation FLObjcCodeElement
@synthesize project = _project;

- (NSString*) generatedReference {
    return nil;
}

- (NSString*) generatedName {
    return nil;
}

- (id) init {	
	return [self initWithProject:nil];
}

- (id) initWithProject:(FLObjcProject*) project {	
    FLAssertNotNil(project);
	self = [super init];
	if(self) {
		_project = project;
	}
	return self;
}

- (void) writeCodeToHeaderFile:(FLObjcFile*) file 
               withCodeBuilder:(FLObjcCodeBuilder*) codeBuilder {
}

- (void) writeCodeToSourceFile:(FLObjcFile*) file 
               withCodeBuilder:(FLObjcCodeBuilder*) codeBuilder {
}


- (FLObjcFile*) headerFile {
    return nil;
}

- (FLObjcFile*) sourceFile {
    return nil;
}

- (FLObjcFileHeader*) generatedFileHeader {
    FLObjcFileHeader* fileHeader = [FLObjcFileHeader objcFileHeader:self.project];
    [fileHeader configureWithInputProject:self.project.inputProject];
    return fileHeader;
}

- (FLObjcFileHeader*) userFileHeader {
    FLObjcFileHeader* fileHeader = [FLObjcFileHeader objcFileHeader:self.project];
    [fileHeader configureWithInputProject:self.project.inputProject];
    return fileHeader;
}



@end
