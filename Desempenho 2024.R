# Desempenho 2024

library(tidyverse)
library(readODS)

desempenho <- read_ods("2024/Santa Estatisticas time 2024.ods")

# Aproveitamento Janeiro 2024:

pontos_ganhos_santa_cruz_jan24 <- desempenho %>%
  select(time, pontos_ganhos, mês) %>%
  filter(str_detect(mês, "Janeiro")) %>%
  summarise(pontos_santa_janeiro = sum(pontos_ganhos))

pontos_ganhos_santa_cruz_jan24

pontos_disputados_santa_cruz_jan24 <- desempenho %>%
  select(time, mês, qtd_unidade) %>%
  filter(str_detect(mês, "Janeiro")) %>%
  summarise(partidas_disputados_santa_janeiro = sum(qtd_unidade)*3)

pontos_disputados_santa_cruz_jan24

aproveitamento_santa_cruz_jan24 = pontos_ganhos_santa_cruz_jan24/pontos_disputados_santa_cruz_jan24*100

aproveitamento_santa_cruz_jan24


#desempenho no campeonato pernambucano 2024:

desempenho_pernambucano <- desempenho %>%
  filter(str_detect(campeonato, "Pernambucano")) %>%
  select(resultado, campeonato, qtd_unidade) %>%
  group_by(resultado) %>%
  summarise(qtd_vit_emp_der_pe = sum(qtd_unidade)) %>%
  arrange(desc(qtd_vit_emp_der_pe))

desempenho_pernambucano


