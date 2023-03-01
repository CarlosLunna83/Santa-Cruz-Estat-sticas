# Desempenho 2023

library(tidyverse)
library(readODS)

desempenho <- read_ods("2023/Santa Estatisticas time 2023.ods")

# Aproveitamento Janeiro 2023:

pontos_ganhos_santa_cruz_jan23 <- desempenho %>%
  select(time, pontos_ganhos, mês) %>%
  filter(str_detect(mês, "Janeiro")) %>%
  summarise(pontos_santa_janeiro = sum(pontos_ganhos))

pontos_ganhos_santa_cruz_jan23

pontos_disputados_santa_cruz_jan23 <- desempenho %>%
  select(time, mês, qtd_unidade) %>%
  filter(str_detect(mês, "Janeiro")) %>%
  summarise(partidas_disputados_santa_janeiro = sum(qtd_unidade)*3)

pontos_disputados_santa_cruz_jan23

aproveitamento_santa_cruz_jan23 = pontos_ganhos_santa_cruz_jan23/pontos_disputados_santa_cruz_jan23*100

aproveitamento_santa_cruz_jan23

#desempenho somadas todas as competições 2023:

desempenho_total <- desempenho %>%
  mutate(as.numeric(qtd_unidade)) %>%
  select(resultado, qtd_unidade) %>%
  group_by(resultado) %>%
  summarise(qtd_vit_emp_der = sum(qtd_unidade)) %>%
  arrange(desc(qtd_vit_emp_der))

desempenho_total

#desempenho no campeonato pernambucano 2023:

desempenho_pernambucano <- desempenho %>%
  filter(str_detect(campeonato, "Pernambucano")) %>%
  select(resultado, campeonato, qtd_unidade) %>%
  group_by(resultado) %>%
  summarise(qtd_vit_emp_der_pe = sum(qtd_unidade)) %>%
  arrange(desc(qtd_vit_emp_der_pe))

desempenho_pernambucano

# Desempenho Copa do Nordeste 2023:

desempenho_copane_2023 <- desempenho %>%
  filter(str_detect(campeonato, "Copa do Nordeste")) %>%
  select(resultado, campeonato, qtd_unidade) %>%
  group_by(resultado) %>%
  summarise(qtd_vit_emp_der_ne = sum(qtd_unidade)) %>%
  arrange(desc(qtd_vit_emp_der_ne))

desempenho_copane_2023

############################################################################################################

# Aproveitamento Fevereiro 2023


pontos_ganhos_santa_cruz_fev23 <- desempenho %>%
  select(time, pontos_ganhos, mês) %>%
  filter(str_detect(mês, "Fevereiro")) %>%
  summarise(pontos_santa_janeiro = sum(pontos_ganhos))

pontos_ganhos_santa_cruz_fev23

pontos_disputados_santa_cruz_fev23 <- desempenho %>%
  select(time, mês, qtd_unidade) %>%
  filter(str_detect(mês, "Fevereiro")) %>%
  summarise(partidas_disputados_santa_fevereiro = sum(qtd_unidade)*3)

pontos_disputados_santa_cruz_fev23

aproveitamento_santa_cruz_fev23 = pontos_ganhos_santa_cruz_fev23/pontos_disputados_santa_cruz_fev23*100

aproveitamento_santa_cruz_fev23

#desempenho somadas todas as competições 2023:

desempenho_total <- desempenho %>%
  mutate(as.numeric(qtd_unidade)) %>%
  select(resultado, qtd_unidade) %>%
  group_by(resultado) %>%
  summarise(qtd_vit_emp_der = sum(qtd_unidade)) %>%
  arrange(desc(qtd_vit_emp_der))

desempenho_total

#desempenho no campeonato pernambucano 2023:

desempenho_pernambucano <- desempenho %>%
  filter(str_detect(campeonato, "Pernambucano")) %>%
  select(resultado, campeonato, qtd_unidade) %>%
  group_by(resultado) %>%
  summarise(qtd_vit_emp_der_pe = sum(qtd_unidade)) %>%
  arrange(desc(qtd_vit_emp_der_pe))

desempenho_pernambucano

# Desempenho Copa do Nordeste 2023:

desempenho_copane_2023 <- desempenho %>%
  filter(str_detect(campeonato, "Copa do Nordeste")) %>%
  select(resultado, campeonato, qtd_unidade) %>%
  group_by(resultado) %>%
  summarise(qtd_vit_emp_der_ne = sum(qtd_unidade)) %>%
  arrange(desc(qtd_vit_emp_der_ne))

desempenho_copane_2023
