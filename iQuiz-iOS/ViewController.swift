//
//  ViewController.swift
//  iQuiz-iOS
//
//  Created by Giovanna Moeller on 07/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var botaoIniciarQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
    }

    @IBAction func botaoIniciarQuizPressionado(_ sender: Any) {
        print("Botão pressionado!")
    }
    
    func configurarLayout() {
        botaoIniciarQuiz.layer.cornerRadius = 16.0
    }
    
}

