//
//  ViewControllers.swift
//  FitNessTests
//
//  Created by AhnSangHoon on 2022/04/24.
//  Copyright © 2022 Razeware. All rights reserved.
//

import UIKit
@testable import FitNess

func getRootViewController() -> RootViewController {
  guard
    let controller = UIApplication.shared.delegate?.window??.rootViewController as? RootViewController
  else {
    assert(false, "Did not a get RootViewController")
  }
  return controller
}
