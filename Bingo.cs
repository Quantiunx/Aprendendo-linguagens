using System;
using System.Collections.Generic;

class Bingo
{
    static void Main()
    {
        int totalBolas = 75;
        List<int> bolas = new List<int>();
        List<int> sorteados = new List<int>();
        Random rand = new Random();

        for (int i = 1; i <= totalBolas; i++)
        {
            bolas.Add(i);
        }

        // Embaralhar as bolas
        Shuffle(bolas, rand);

        Console.WriteLine("Sorteio de bolas do bingo:");
        bool continuar = true;

        while (bolas.Count > 0 && continuar)
        {
            int bolaSorteada = bolas[0];
            bolas.RemoveAt(0);
            sorteados.Add(bolaSorteada);

            Console.WriteLine($"Bola sorteada: {bolaSorteada}");
            Console.WriteLine("Digite 's' para parar o sorteio ou pressione Enter para continuar:");
            string input = Console.ReadLine();

            if (input.ToLower() == "s")
            {
                continuar = false;
            }
        }

        sorteados.Sort();

        Console.WriteLine("\nNúmeros sorteados (ordenados):");
        foreach (int numero in sorteados)
        {
            Console.WriteLine(numero);
        }
    }

    static void Shuffle(List<int> list, Random rand)
    {
        int n = list.Count;
        while (n > 1)
        {
            n--;
            int k = rand.Next(n + 1);
            int value = list[k];
            list[k] = list[n];
            list[n] = value;
        }
    }
}
