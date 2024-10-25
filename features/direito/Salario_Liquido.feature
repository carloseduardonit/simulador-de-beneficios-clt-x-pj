# Language: pt

Funcionalidade: Calculo do Salario Liquido

    Cenário: Calcular saldo do Salario liquido apos desconto INSS
        Dado que o usuario deixa obter o saldo do Salario liquido INSS
        Quando informar o  valor "Salario bruto"
        Então o sistema calcular o valor desconto
            E obtem o valor "Salario liquido desconta" pelo INSS

    Cenário: Calcular saldo do Salario liquido apos desconto IRPF
        Dado que o usuario deixa obter o saldo do Salario liquido IRPF
        Quando informar o  valor "Salario liquido desconta" pelo INSS
        Então o sistema calcular o valor desconto
            E obtem o valor "Salario liquido desconta" pelo IRPF