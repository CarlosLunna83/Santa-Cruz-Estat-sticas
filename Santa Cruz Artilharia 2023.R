# Santa Cruz Artilharia 2023 

library(tidyverse)
library(readxl)
library(janitor)
library(readODS)

santa_artilharia_2023 <- read_ods("2023/Santa Cruz estatisticas Artilharia 2023.ods")

# Artilharia geral 2023:

santa_artilheiros_2023 <- santa_artilharia_2023 %>%
  select(autor_do_gol, qtd_unidade) %>%
  group_by(autor_do_gol) %>%
  summarise(qtd_gols = sum(qtd_unidade)) %>%
  arrange(desc(qtd_gols))

santa_artilheiros_2023

# Artilharia Pernambucano 2023:

artilheiros_pe2023 <- santa_artilharia_2023 %>%
  select(autor_do_gol, campeonato, qtd_unidade) %>%
  filter(str_detect(campeonato, "Pernambucano")) %>%
  group_by(autor_do_gol) %>%
  summarise(qtd_gols = sum(qtd_unidade)) %>%
  arrange(desc(qtd_gols))

artilheiros_pe2023

# Artilharia Copa do Nordeste 2023

artilheiros_copane2023 <- santa_artilharia_2023 %>%
  select(autor_do_gol, campeonato, qtd_unidade) %>%
  filter(str_detect(campeonato, "Copa do Nordeste")) %>%
  group_by(autor_do_gol) %>%
  summarise(qtd_gols = sum(qtd_unidade)) %>%
  arrange(desc(qtd_gols))

artilheiros_copane2023
