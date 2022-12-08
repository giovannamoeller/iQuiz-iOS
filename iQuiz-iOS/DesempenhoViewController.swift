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
        configurarDesempenho()
        // Do any additional setup after loading the view.
    }
    
    func configurarLayout() {
        navigationItem.hidesBackButton = true
        botaoReiniciarQuiz.layer.cornerRadius = 16.0
    }
    
    func configurarDesempenho() {
        labelTotalAcertos.text = "Você acertou \(pontuacao) de \(totalQuestoes) questões."
        labelPercentualFinal.text = "Percentual final: \(calculaPercentual())"
    }
    
    func calculaPercentual() -> String {
        let percentual = (pontuacao * 100) / totalQuestoes
        return "\(percentual)%"
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
