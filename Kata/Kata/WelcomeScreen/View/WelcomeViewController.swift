//
//  WelcomeViewController.swift
//  Kata
//
//  Created by Aldrin Gama on 2022/05/24.
//

import UIKit

class WelcomeViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    // Mark: IBOutlet(s)
    
    @IBOutlet weak var inputTextView: UITextView!
    @IBOutlet weak var copyButton: UIButton!
    @IBOutlet weak var presentLabel: UILabel!
    
    // Mark: Dependancies
    
    private lazy var viewModel: WelcomeViewModel = WelcomeViewModel(view: self,
                                                                delegate: self)
    
    // Mark: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.onViewDidLoad()
        inputTextView.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        inputTextView.resignFirstResponder()
        return true
    }
    
    @IBAction func getInput(_ sender: UIButton) {
        self.viewModel.sourceValue = inputTextView.text ?? ""
        self.presentLabel.text = nil
        self.viewModel.copySource()
        let alert = UIAlertController(title: "Infomation",
                                      message: "Your text is copied.",
                                      preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok",
                                      style: UIAlertAction.Style.default,
                                      handler: nil))
        self.present(alert,
                     animated: true,
                     completion: nil)
    }
}

// Mark: Extension(s)

extension WelcomeViewController: WelcomeView {
    
    func configureTextField(_ placeHolder: String) {
        self.inputTextView.layer.cornerRadius = 5
    }
    
    func configureCopyButton(_ title: String) {
        self.copyButton.setTitle(title, for: .normal)
        self.copyButton.backgroundColor = .white
        self.copyButton.layer.cornerRadius = 5
    }
}

extension WelcomeViewController: DestinationDelegate {
    func presentChar(char: Character) {
        presentLabel.text = (presentLabel.text ?? "") + String(char)
    }
}
