// Primeros pasos con Swift


// Variables y constantes
var hola = "Mundo" // Variable: El compilador infiere el tipo por su valor
let answer: Int = 42 // Constante: El compilador no infiere por el valor


// Todo es un objeto
Int.max
Double.abs(-45)



// Tuplas: asocian dos o más objetos
var q:(Int, String, String) = (42, "Cuarenta y dos", "Fourtytwo")
q.0
q.1
q.2


q.1 = "Cuarentaidos"

//q.2 = 78 // Se encabrona

// Las tuplas especiales:
// La 1-tupla no existe: no te permite crear una tupla de un solo elemento
let single = (8) // es un 8

// La tupla vacía: representa la nada
let nothing: () = ()


// Colecciones

// Array 
//var nums = [1,2,3,4,5,"6"] // Se encabrona, es tipado
var nums = [1,2,3,4,5,6]
nums = nums + [7,8,9];

nums[0]
nums[4]

for elt in nums {
    println("Un elemento del array:\t\(elt+1),") // Poniendo elt entre paréntesis y con \ se evalua la cadena
}

// Dictionary
var bso = ["Barry" : ["Born Free", "Dancing with Wolves"], "Sakamoto": ["Black Rain"]];

bso["Barry"];
bso["Williams"];

for (keyword, value) in bso {
    println("\(keyword) ha puesto: \(value)");
}


// Funciones de andar por casa
func h(a:Int) -> Int {
    return a + 2
}
h(3)
//h(a:5) casca porque no está declarado hacia fuera. Para esro hay que poner #a

func h1(elsa a: String) -> String {
    return "Elsa era una \(a)"
}

h1(elsa: "reina de Arendel");
h1(elsa: "leona");

func add(a:Int, b:Int, thenMultiplyBy c: Int) -> Int {
    return (a+b)*c;
}
add(2, 5, thenMultiplyBy: 76)


// Funciones de primer nivel
// aceptar funciones como parámetros
// devolver funcionesd
typealias IntToIntFun = (Int)->Int
    
func apply(f:IntToIntFun, n:Int) -> Int {
    return f(n)
}

func addOne(a:Int) -> Int {
    return a.successor() // Sucessor te retorna el siguiente entero
}
addOne(4)

apply(addOne, 6)

func compose(f:IntToIntFun, g:IntToIntFun) -> IntToIntFun {
    func comp(a:Int) -> Int {
        return g(f(a))
    }
    return comp
}

compose(addOne, h)(5)


