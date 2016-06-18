#import <Foundation/Foundation.h>


typedef NS_ENUM(NSUInteger, ObjCEnum) {
	ObjCEnumUPPERCASE
};


@interface ProblematicBridgedObjCClass : NSObject

+ (void)problematicWithLaunchedDueToDeepLink:(BOOL)launchedDueToDeepLink;

@end
