# BurningBridges

Demonstrates a few problems that happen with the Swift 3 migrator and bridge in Xcode 8

## Trigger Migration

This project is a mixed ObjC/Swift project generated with Xcode 7. When opening in Xcode 8 (beta), the automatic Swift 3 migrator results in a few issues.

The problematic cases are demonstrated in the file [Problematic.swift](BurningBridges/Problematic/Problematic.swift).

## Participating

This project was sent as a bugreport to Apple in [rdar://26878591](https://openradar.appspot.com/radar?id=4965593656590336).

If you have additional problematic cases, you are welcome to make a pull request to this repo.
