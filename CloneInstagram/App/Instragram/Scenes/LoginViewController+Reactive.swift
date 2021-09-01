//
//  LoginViewController+Reactive.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 31/08/21.
//

import UIKit
import RxCocoa
import RxSwift

extension LoginViewController: UITextFieldDelegate {
    
    func setupBindings() {
        
        txtFieldPassword.rx.controlEvent(.editingChanged)
            .withLatestFrom(txtFieldPassword.rx.text.orEmpty)
            .subscribe(onNext: { [weak self] (text) in
                self?.lblText.text = text
                print(text)
            })
            .disposed(by: disposeBag)
        
        pushButton
            .subscribe(onNext: { [weak self] (text) in
                self?.lblText.text = text
                print(text)
            }).disposed(by: disposeBag)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(textField.text)
        return true
    }
}
