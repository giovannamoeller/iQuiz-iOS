//
//  QuestaoViewController.swift
//  iQuiz-iOS
//
//  Created by Giovanna Moeller on 08/12/22.
//

import UIKit

class QuestaoViewController: UIViewController {
    
    let questoes: [Questao] = [
        Questao(titulo: "O que é código condicional?", respostas: ["Um bloco de comando", "Um comando que só será executado dele é verdadeiro", "Um comando que só será executado se for falso"], respostaCorreta: 0),
        Questao(titulo: "O que é debugging?", respostas: ["Erros nos códigos", "Processo de encontrar e corrigir erros", "Criar uma sequência correta de comandos"], respostaCorreta: 1),
        Questao(titulo: "O que é um booleano?", respostas: ["Um valor que pode ser verdadeiro ou falso", "Um valor que só pode ser verdadeiro", "Um valor que só pode ser falso"], respostaCorreta: 0)
    ]
    
    var numeroQuestao: Int = 0
    var pontuacao: Int = 0

    @IBOutlet weak var labelTituloQuestao: UILabel!
    
    @IBOutlet var botoesResposta: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        configurarQuestao()
    }
    
    @objc func configurarQuestao() {
        labelTituloQuestao.text = questoes[numeroQuestao].titulo
        botoesResposta.forEach { botao in
            botao.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
            botao.setTitle(questoes[numeroQuestao].respostas[botao.tag], for: .normal)
        }
    }
    
    func configurarLayout() {
        navigationItem.hidesBackButton = true
        botoesResposta.forEach { botao in
            botao.layer.cornerRadius = 16.0
            botao.titleLabel?.textAlignment = .center
        }
        labelTituloQuestao.numberOfLines = 0
        labelTituloQuestao.textAlignment = .center
    }
    
    @IBAction func botaoRespostaPressionado(_ sender: UIButton) {
        if verificarRespostaCorreta(sender.tag) {
            pontuacao += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
        } else {
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
        }
        
        if numeroQuestao < questoes.count - 1 {
            numeroQuestao += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)
        } else {
            performSegue(withIdentifier: "irParaTelaDesempenho", sender: nil)
        }
    }
    
    func verificarRespostaCorreta(_ respostaUsuario: Int) -> Bool {
        return respostaUsuario == questoes[numeroQuestao].respostaCorreta
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController else { return }
        desempenhoVC.pontuacao = pontuacao
        desempenhoVC.totalQuestoes = questoes.count
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
