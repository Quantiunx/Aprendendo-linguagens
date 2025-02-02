-- Função para embaralhar uma tabela
function shuffle(t)
    local n = #t
    for i = n, 2, -1 do
        local j = math.random(i)
        t[i], t[j] = t[j], t[i]
    end
end

-- Função para ordenar uma tabela (método de ordenamento: insertion sort)
function insertionSort(t)
    for i = 2, #t do
        local key = t[i]
        local j = i - 1
        while j >= 1 and t[j] > key do
            t[j + 1] = t[j]
            j = j - 1
        end
        t[j + 1] = key
    end
end

-- Função para sortear as bolas do bingo uma a uma
function sortearBolas(total_bolas)
    local bolas = {}
    for i = 1, total_bolas do
        table.insert(bolas, i)
    end

    shuffle(bolas)

    local sorteados = {}
    local continuar = true

    print("Sorteio de bolas do bingo:")
    for i = 1, total_bolas do
        if not continuar then
            break
        end

        print(string.format("Bola sorteada %d: %d", i, bolas[i]))
        table.insert(sorteados, bolas[i])

        print("Digite 's' para parar o sorteio ou pressione Enter para continuar:")
        local input = io.read()
        if input == "s" then
            continuar = false
        end
    end

    insertionSort(sorteados)

    print("\nNumeros sorteados (ordenados):")
    for i, numero in ipairs(sorteados) do
        print(numero)
    end
end

-- Inicializa a semente de números aleatórios
math.randomseed(os.time())

-- Chama a função de sorteio de bolas com 75 bolas
sortearBolas(75)
