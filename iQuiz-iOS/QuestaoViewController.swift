//
//  QuestaoViewController.swift
//  iQuiz-iOS
//
//  Created by Giovanna Moeller on 08/12/22.
//

import UIKit

class QuestaoViewController: UIViewController {

    @IBOutlet weak var labelTituloQuestao: UILabel!
    
    @IBOutlet var botoesResposta: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
    }
    
    func configurarLayout() {
        navigationItem.hidesBackButton = true
        botoesResposta.forEach { botao in
            botao.layer.cornerRadius = 16.0
        }
    }
    
    @IBAction func botaoRespostaPressionado(_ sender: UIButton) {
        print(sender.tag)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
