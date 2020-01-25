//
//  BaseViewController.swift
//  HastenSports
//
//  Created by Leticia Martín on 25/01/2020.
//  Copyright © 2020 Leticia Martín. All rights reserved.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    func showAlert(description: String, isCancelVisible: Bool = false) {
        
    }
    
    public func NSLocalizedString(_ key: String, tableName: String? = nil, bundle: Bundle = Bundle.main, value: String = "", comment: String) -> String {
        let fallbackLanguage = "en"
        guard let fallbackBundlePath = Bundle.main.path(forResource: fallbackLanguage, ofType: "lproj") else { return key }
        guard let fallbackBundle = Bundle(path: fallbackBundlePath) else { return key }
        let fallbackString = fallbackBundle.localizedString(forKey: key, value: comment, table: nil)
        return Bundle.main.localizedString(forKey: key, value: fallbackString, table: nil)
    }


}
