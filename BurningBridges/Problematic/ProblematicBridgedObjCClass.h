#import <Foundation/Foundation.h>


typedef NS_ENUM(NSUInteger, ObjCEnum) {
	ObjCEnumUPPERCASE
};

typedef NS_ENUM(NSInteger, SecondObjcEnum) {
	CaseNotIncludingEnumNameAsPrefix
};


@interface ProblematicBridgedObjCClass : NSObject

+ (void)problematicWithLaunchedDueToDeepLink:(BOOL)launchedDueToDeepLink;
+ (void)problematicWithBlock:(void (^)(NSError *))block;
+ (void)showResultsWithUrl:(NSURL *)someParameter;

@end
