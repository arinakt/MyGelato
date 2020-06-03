//
//  BascetViewController.swift
//  myGelato
//
//  Created by Арина on 31.05.2020.
//  Copyright © 2020 Арина. All rights reserved.
//

import UIKit

class BascetViewController: UIViewController {
    
    let identifier = "cell"
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var telephoneNumberTF: UITextField!
    @IBOutlet weak var adressTF: UITextField!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var sumLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sumLabel.text = "Сумма: \(String(Order.sharedInstance.sum))₽"
        
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil) { (nc) in
            self.view.frame.origin.y = -300
        }
        
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: nil) { (nc) in
            self.view.frame.origin.y = 0
        }
    }
    
        //TextField methods
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTF {
            telephoneNumberTF.becomeFirstResponder()
        } else if textField == telephoneNumberTF {
            adressTF.becomeFirstResponder()
        } else if textField == adressTF {
            textField.resignFirstResponder()
        }
        
        return true
    }
    
    func alert(title: String, message: String, style: UIAlertController.Style) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        let actionOK = UIAlertAction(title: "ok", style: .default) { (actionOK) in
        }
        alert.addAction(actionOK)
        self.present(alert, animated: true)
    }

    @IBAction func placeOrderButton(_ sender: Any) {
        if (nameTF.text?.isEmpty == false ) && (telephoneNumberTF.text?.isEmpty == false ) && (adressTF.text?.isEmpty == false) {
            
            alert(title: "Готово!", message: "В ближайшее время с вами свяжется наш менеджер", style: .alert)
            
            Order.sharedInstance.sum = 0
            bascetArray = [Gelato]()
            tableView.reloadData()
            sumLabel.text = "Сумма: 0₽"
            
            nameTF.text = nil
            telephoneNumberTF.text = nil
            adressTF.text = nil
            
        } else {
            alert(title: "Ошибка", message: "Заполните все поля, чтоб мы смогли телепортировать вам мороженое", style: .alert)
        }
    }
}

extension BascetViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bascetArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? BascetTableViewCell {
            
            cell.getData(item: bascetArray[indexPath.row])
            
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 82
    }
}

// MARK: - UITextFieldDelegate
extension BascetViewController: UITextFieldDelegate {
        
    // Скрытие клавиатуры по тапу за пределами Text Field
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        view.endEditing(true) // Скрывает клавиатуру, вызванную для любого объекта
    }
}

