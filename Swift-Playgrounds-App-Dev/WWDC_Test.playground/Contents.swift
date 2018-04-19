//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport // live previewing


let master = WWDCMasterViewController()
let navigation = UINavigationController(rootViewController: master)

// connect to playground's live view
PlaygroundPage.current.liveView = navigation
