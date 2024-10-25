# Language: pt

Funcionalidade: Cálculo das contribuições de INSS para pessoa física

    Cenário: Calcular contribuições para uma pessoa física com candidatura CLT
        Dado que o candidato é uma pessoa física
            E para "tipo de candidatura" CLT
        Quando o candidato informa o valor do <Salário bruto>
        Então o sistema valida se o Salário bruto é maior ou igual a <Valor Mínimo>
            E o sistema valida se o Salário bruto é menor ou igual a <Valor Máximo>
            E o valor das contribuições deve ser calculado aplicando <Alíquota> ao Salário bruto
            E o valor final da contribuição deve ser <Final da contribuição>

    Exemplos:
        
        | Salário bruto | Valor Mínimo | Valor Máximo | Alíquota | Final da contribuição |
        | 0,01          | 0,01         | 1.412,00     | 7,5%     | R$ 0,00              |
        | 706,00        | 0,01         | 1.412,00     | 7,5%     | R$              |
        | 1.412,00      | 0,01         | 1.412,00     | 7,5%     | R$ 105,90            |
        | 1.412,01      | 1.412,01     | 2.666,68     | 9%       | R$           |
        | 2.666,68      | 1.412,01     | 2.666,68     | 9%       | R$ 240,00            |
        | 4.000,03      | 2.666,69     | 4.000,03     | 12%      | R$ 480,00            |
        | 7.786,02      | 4.000,04     | 7.786,02     | 14%      | R$ 1.090,04          |


Funcionalidade: Cálculo das contribuições para pessoa jurídica

    Cenário: Calcular contribuições para uma pessoa jurídica que não é MEI
        Dado que o candidato é uma pessoa jurídica
            E  para "tipo de candidatura" de PJ
        Quando o candidato informa o "Salário bruto" como R$ 10.000,00
        Então o sistema deve calcular o valor da contribuição
            E o valor das contribuições deve ser 20% do Salário bruto
            E o valor final da contribuição deve ser R$ 2.000,00

    Cenário: Calcular contribuições para uma pessoa jurídica que é MEI
        Dado que o candidato é uma pessoa jurídica
            E  para "tipo de candidatura " de PJ-MEI
        Quando o candidato informa o valor do "Salário Mínimo" como R$ 1.320,00
        Então o valor das contribuições será 5% do Salário Mínimo
            E o valor da contribuição incluirá R$ 1,00 de ISS
            E o valor da contribuição incluirá R$ 5,00 de ICMS
            E o valor total da contribuição será R$ 66,00 (5% de R$ 1.320,00) + R$ 1,00 + R$ 5,00
        , totalizando R$ 72,00