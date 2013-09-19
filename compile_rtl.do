#
# VLSI II - T1 1
#
# DO File
#
# Daiane Fraga, George Redivo
#

# Criar a biblioteca
vlib work

# Criar uma ligacao entre a biblioteca criada e o diretorio work
vmap work work

# Especifica quais arquivos fazem parte da simulacao
# Arquivos da implementacao:
cd verilog_code
vlog -work ../work *.v

# Arquivos do testbench:
cd testbench
vlog -work ../../work *.v
cd ..

# Configura compilacao para ter cobertura de codigo (bscet = Branches Statements Condition Expression Toggle)
vlog -work ../work -cover bscet allocator_6x6.v in_buffer_2.v out_buffer_6.v switch_6x6_2_6.v
cd ..

# Simula testbech com cobertura de codigo ativada
vsim -coverage work.testbench

# Gera arquivos para gravar os relatorios de cobertura de codigo
coverage report -file cover.txt
coverage save cover.cov

# Especifica arquivo VCD
vcd file pid.vcd

# Adiciona objetos ao VCD
vcd add -r /*

# Executa simulacao
run 1 ms

# Faz dump dos valores para o VCD
vcd checkpoint

restart -f
