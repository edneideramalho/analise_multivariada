# Programação Linear
# Fonte:  https://rpubs.com/hudsonchavs/linearprogramming#:~:text=Um%20problema%20geral%20de%20Programa%C3%A7%C3%A3o,inequa%C3%A7%C3%B5es)%20lineares%2C%20chamadas%20restri%C3%A7%C3%B5es.

# Token: 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
#teste

# 0. Pacotes --------
library(lpSolve)
library(lpSolveAPI)
library(ggplot2)
library(plotly)

# 1. Problema ---------

## 1.1. Função objetiva ---------
func_objetivo <- c(20, 60)

## 1.2. Matriz com os coeficientes das restrições --------
coeficientes_restricoes <- matrix(c(30, 20, 5, 10, 1, 1), ncol = 2, byrow = TRUE)

## 1.3. Sinal das retrições -----------
direcao_restricoes <- c("<=", "<=", ">=")

## 1.4. Limite das restrições --------
limites_restricoes <- c(2700, 850, 95)


# 2. Solução ---------
solucao_problema <- lpSolve::lp(direction = "max",
                                objective.in = func_objetivo,
                                const.mat = coeficientes_restricoes,
                                const.dir = direcao_restricoes,
                                const.rhs = limites_restricoes)

solucao_problema

## 2.1. Valores para as variáveis de escolha maximiza o lucro --------
solucao_problema$solution
