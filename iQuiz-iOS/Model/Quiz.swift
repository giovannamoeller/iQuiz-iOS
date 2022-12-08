//
//  Quiz.swift
//  iQuiz-iOS
//
//  Created by Giovanna Moeller on 08/12/22.
//

import Foundation

struct Quiz {
    var pontuacao: Int = 0
    var numeroQuestao: Int = 0
    
    var totalQuestoes: Int {
        return Quiz.questoes.count
    }
    
    var tituloQuestao: String {
        return Quiz.questoes[numeroQuestao].titulo
    }
    
    var finalizado: Bool {
        numeroQuestao >= Quiz.questoes.count - 1
    }
    
    mutating func proximaQuestao() {
        numeroQuestao += 1
    }
    
    mutating func marcaPonto() {
        pontuacao += 1
    }
    
    func verificaQuestao(respostaUsuario: Int) -> Bool {
        return Quiz.questoes[numeroQuestao].respostaCorreta == respostaUsuario
    }
    
    func calculaPercentualFinal() -> String {
        let porcentagem = (pontuacao * 100) / totalQuestoes
        return "\(porcentagem)%"
    }
    
}

extension Quiz {
    static let questoes: [Questao] = [
        Questao(titulo: "O que é código condicional?", respostas: ["Um bloco de comando", "Um comando que só será executado dele é verdadeiro", "Um comando que só será executado se for falso"], respostaCorreta: 0),
        Questao(titulo: "O que é debugging?", respostas: ["Erros nos códigos", "Processo de encontrar e corrigir erros", "Criar uma sequência correta de comandos"], respostaCorreta: 1),
        Questao(titulo: "O que é um booleano?", respostas: ["Um valor que pode ser verdadeiro ou falso", "Um valor que só pode ser verdadeiro", "Um valor que só pode ser falso"], respostaCorreta: 0)
    ]
}
