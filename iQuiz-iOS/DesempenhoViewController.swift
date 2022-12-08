//
//  DesempenhoViewController.swift
//  iQuiz-iOS
//
//  Created by Giovanna Moeller on 08/12/22.
//

import UIKit

class DesempenhoViewController: UIViewController {

    var pontuacao: Int = 0
    var totalQuestoes: Int = 0
    
    @IBOutlet weak var botaoReiniciarQuiz: UIButton!
    @IBOutlet weak var labelTotalAcertos: UILabel!
    @IBOutlet weak var labelPercentualFinal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        // Do any additional setup after loading the view.
    }
    
    func configurarLayout() {
        navigationItem.hidesBackButton = true
        botaoReiniciarQuiz.layer.cornerRadius = 16.0
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
