import Foundation
import UIKit
import Photos


enum SwiftEnum {
	case Case1
}


/**
	This class demonstrates a few problems that happen with the Swift 3 migrator and bridge in Xcode 8
	Tested with Xcode 8 beta 1
*/
class Problematic {

	// ObjC method should be bridged to `problematic(launchedDueToDeepLink: Bool)`, but gets bridged to `problematicWithLaunchedDue(toDeepLink: Bool)`
	func problematic1() {
		ProblematicBridgedObjCClass.problematicWithLaunchedDueToDeepLink(true)
	}
	
	// @noescape and @autoclosure are not moved to parameter type
	func problematic2(@noescape block1: () -> Void, @autoclosure block2: () -> Void) {
		
	}
	
	// compile error, uppercase enum gets bridged to uppercase, but converter converts to lowercase
	func problematic3() {
		let _: ObjCEnum = .UPPERCASE
		let _: UIUserInterfaceIdiom = .TV
	}
	
	// compile error, uppercase enum gets bridged to uppercase, but converter converts to lowercase
	func problematic4() {
		let _: SecondObjcEnum = .CaseNotIncludingEnumNameAsPrefix
	}
	
	// compile error, Default is not a real case but a static var, in Swift 3 it currently only can be referenced it the way `PHImageContentMode.Default`
	func problematic5() {
		let _: PHImageContentMode = .Default
	}
	
	// compile error, lastObject now returns concrete type instead of AnyObject?
	func problematic6() {
		let fetchResult: PHFetchResult? = nil
		let _: PHAsset? = fetchResult?.lastObject as? PHAsset
	}
	
	// compile error, only codepaths for Release build config get migrated
	func problematic7() {
		#if DEBUG
			// does not get migrated
			let _: SwiftEnum = .Case1
		#else
			let _: SwiftEnum = .Case1
		#endif
	}
	
}
