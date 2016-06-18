import Foundation
import UIKit


/**
	This class demonstrates a few problems that happen with the Swift 3 migrator and bridge in Xcode 8
	Tested with Xcode 8 beta 1
*/
class Problematic {

	// ObjC method should be bridged to `problematic(launchedDueToDeepLink: Bool)`, but gets bridged to `problematicWithLaunchedDue(toDeepLink: Bool)`
	func problematic1() {
		ProblematicBridgedObjCClass.problematicWithLaunchedDueToDeepLink(true)
	}
	
}
