// Playground - noun: a place where people can play

// Clausuras

// OJO, todas las funciones ya son clausuras, es sólo que les
// pareció guay inventar más sintaxis para lo mismo

// Sintaxis habitual
func f(a:Int) ->Int {
    return a + 42;
}


let f = {(a:Int) -> Int
in
    return a + 3}


// Esto es u bug: si tienes una clausura y una funcion con el mismo
// nombre no casca
f(4)


// podemos poner clausuras en colecciones

var funcs = [f,
    {(a:Int) -> Int in return a * 2},  // sintaxis completa
    {a -> Int in return a * 33},        // tipo de parámetro inferido
    {a -> Int in a + 33},               // return implícito
    {a in a - 2},                       // tipo de retorno implícito
    {$0 * 3}
]

for f in funcs {
    f(1)
}


// Trailing closure (clausura que cuelga) si el último parámetro de una 
// función es otra función, la podemos llamar de forma algo diferente
typealias BinaryFun = (Int, Int) -> Int

func combine(a:Int, b:Int, combitanor: BinaryFun) -> Int {
    return combitanor(a,b);
}

// La llamo de forma normal
combine(3,2) {$0 * $1}


// La llamo con la clausura que cuelga
combine(4,5) {(a,b) -> Int in
(a + 42) * (b - 1)
}