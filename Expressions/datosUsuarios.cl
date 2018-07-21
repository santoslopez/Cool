--autor: Santos Lopez Tzoy

--Acerca: ejemplo de como crear un ciclo en cool, 
--el ejercicio pide un nombre de usuario y no permite que su longitud sea cero 


--El proposito de este ejercicio es para reforzar lo aprendido en Compilers y para ayudar a otros a 
--enteder mejor el lenguaje, y si no tienen el dominio suficiente del idioma Ingles, ayudarse con este ejemplo 
--y no PARA que lo tomen como una forma de entregar esto para alguna tarea en alguna Universidad.

--Manual de cool por la Universidad de Stanford para conocer mejor la estructura del if, while, let, case, etc.
--https://theory.stanford.edu/~aiken/software/cool/cool-manual.pdf 

class Main inherits IO{
	textoNombre: String<-"\nIngrese su nombre: \n";

	main(): Object{
		--estructura del let: 
		--let ID : TYPE [<-expr] [[,ID : TYPE [<-expr]]]∗ in expr
		let name: String<-"",edad: Int<-0 in{
			--creamos un ciclo para evitar que la longitud del length sea cero 
			while (true) loop{
				(new IO).out_string(textoNombre);
				name<-in_string();

				--si no hemos ingresado nada 
				if name.length() = 0 then {
					(new IO).out_string("Por favor ingrese un nombre valido!!!");
				
				--si los datos esta correcto 
				}else{
					(new IO).out_string("Datos correctos\n");	
					--forzamos a que se salga 
					abort();
				}
				fi;

			}
			pool;
		}
	};
};


