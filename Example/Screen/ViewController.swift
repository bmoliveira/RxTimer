//
//  ViewController.swift
//  RxTimer
//
//  Created by Bruno Oliveira on 17/01/2019.
//  Copyright © 2019 Bruno Oliveira. All rights reserved.
//

import UIKit
import RxTimer
import RxSwift
import Foundation

class ViewController: UIViewController {
  @IBOutlet weak var exampleLabel: UILabel!
  
  private let viewModel = ScreenViewModel(time: 30)
  
  let disposeBag = DisposeBag()
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    Timer.rx.timer
      .map { _ in
        self.viewModel.tick()
      }
      .subscribe(onNext: { time in
        self.exampleLabel.text = time.description
      })
      .disposed(by: disposeBag)
  }
  
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    
  }
}
