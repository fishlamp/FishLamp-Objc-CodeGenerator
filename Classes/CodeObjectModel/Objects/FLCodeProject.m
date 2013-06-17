// 
// FLCodeProject.m
// 
// Modifications are expected. File will not be overwritten.
// Generated by: Mike Fullerton @ 6/15/13 4:24 PM with PackMule (3.0.0.29)
// 
// Project: FishLamp Code Generator
// 
// Copyright 2013 (c) GreenTongue Software LLC, Mike Fullerton
// The FishLamp Framework is released under the MIT License: http://fishlamp.com/license
// 

#import "FLCodeProject.h"
#import "FLCodeProjectBaseClass.h"

@implementation FLCodeProject
@synthesize projectPath = _projectPath;
@synthesize projectLocation = _projectLocation;


+ (id) codeProject {
    return FLAutorelease([[[self class] alloc] init]);
}
#if FL_MRC
- (void) dealloc {
    [_projectLocation release];
    [_projectPath release];
    [super dealloc];
}
#endif

- (NSString*) projectFolderPath {
//    return [[self.projectPath path] stringByDeletingLastPathComponent];

    return [self.projectPath stringByDeletingLastPathComponent];
}



@end
