// Criar a biblioteca
vlib work

// Criar uma ligação entre a biblioteca criada e o diretório work
vmap work work

// Especifica quais arquivos fazem parte da simulação
<vcom/vlog> -work work <FILE_NAME>.<v/vhd>
...

// Configura compilação para ter cobertura de código (bscet = Branches Statements Condition Expression Toggle)
<vcom/vlog> -cover bscet <FILE_NAME>.<v/vhd>
...

// Simula testbech com cobertura de código ativada
vsim -coverage work.<TESTBENCH_NAME>

// Gera arquivos para gravar os relatórios de cobertura de código
coverage report -file cover.txt
coverage save cover.cov

