import Foundation
import UIKit

class Problematic {

	// ObjC method should be bridged to `problematic(launchedDueToDeepLink: Bool)`, but gets bridged to `problematicWithLaunchedDue(toDeepLink: Bool)`
	func problematic1() {
		ProblematicBridgedObjCClass.problematicWithLaunchedDueToDeepLink(true)
	}
	
}
