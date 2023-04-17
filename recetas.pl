% Definición de los hechos
receta(pastel_de_chocolate, [harina, azucar, cacao, huevo, leche, aceite, polvo_para_hornear]).
receta(pizza, [harina, agua, levadura, tomate, queso, aceitunas]).
receta(ensalada, [lechuga, tomate, pepino, aceitunas, aceite, vinagre]).
receta(hamburguesa, [pan_de_hamburguesa, carne, lechuga, tomate, cebolla, queso, ketchup, mostaza]).

% Definición de la regla para buscar recetas disponibles
recetas_disponibles([Ing1, Ing2], Recetas) :-
    findall(R, (receta(R, I), member(Ing1, I), member(Ing2, I)), Recetas).
ingredientes(Receta2, Ingredientes) :- receta(Receta2, Ingredientes).