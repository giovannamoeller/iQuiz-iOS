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
    
    func configurarQuestao() {
        labelTituloQuestao.text = questoes[numeroQuestao].titulo
        botoesResposta.forEach { botao in
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
        verificarResposta(sender.tag)
    }
    
    func verificarResposta(_ respostaUsuario: Int) {
        if respostaUsuario == questoes[numeroQuestao].respostaCorreta {
            pontuacao += 1
        }
        if numeroQuestao < questoes.count - 1 {
            numeroQuestao += 1
            configurarQuestao()
        }
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
