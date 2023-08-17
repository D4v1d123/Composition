import Foundation

//COMPOSITION
/*1. Intenta realizar una clase, de nombre Examen, para guardar información sobre los exámenes de un centro educativo. La información que se guarda de un examen es la siguiente: el nombre de la asignatura, el aula, la fecha y la hora. Para guardar la fecha y la hora, hay que realizar dos clases, Fecha y Hora.

La clases Fecha guarda día, mes y año. Todos los valores se reciben en el constructor por parámetro. Además, esta clase debe tener un método que devuelva cada uno de los atributos, y un método toString() que que devuelva la información de la fecha en forma de String.

La clase Hora guarda hora y minuto. También recibe los valores para los atributos por parámetro en el constructor, tiene métodos que devuelven cada uno de los atributos y un método toString().
 
**** La fecha debe de ser guardada en formato "día/mes/año" y la hora en "hora:minuto" en cronometraje militar ****
 */
/*
class Examen {
    var nombreAsignatura: String, aula: String, fechaExamen: String, horaExamen: String
    
    init (_ nombreAsignatura: String, _ aula: String, _ fechaExamen: String, _ horaExamen: String){
        self.nombreAsignatura = nombreAsignatura
        self.aula = aula
        self.fechaExamen = fechaExamen
        self.horaExamen = horaExamen
        
    }
    
}


class Fecha {
    var dia: Int, mes: Int, ano: Int
    
    init(_ dia: Int, _ mes: Int, _ ano: Int){
        self.dia = dia
        self.mes = mes
        self.ano = ano
        
    }
    
    func atributos () -> (Int, Int, Int) {
        return (self.dia, self.mes, self.ano)
        
    }
    
    //El formato de la fecha es "YYYY-MM-DD"
    func formatoFechaToString () -> String {
        return "\(self.ano)-\(self.mes)-\(self.dia)"
        
    }
    
}


//Hora en cronometraje militar
class Hora {
    var hora: Int, minuto: Int
    
    init(_ hora: Int, _ minuto: Int){
        self.hora = hora
        self.minuto = minuto
        
    }
    
    func atributos () -> (Int, Int) {
        return (self.hora, self.minuto)
        
    }
    
    //El formato de la fecha es "HH:MM:SS"
    func formatoHoraToString () -> String {
        return "\(self.hora):\(self.minuto)"
        
    }
    
}

//Crear un examen
let examen1 = Examen("Modelado de software", "201", Fecha(22, 07, 2023).formatoFechaToString(), Hora(10, 32).formatoHoraToString())

//Mostrar los atributos del objeto 'examen1'
print("\(examen1.nombreAsignatura), \(examen1.aula), \(examen1.horaExamen), \(examen1.fechaExamen).")
*/


/* 2. Escriba un programa que determine la cantidad de dígitos en un número entero ingresado por el usuario:

 Ingrese numero: 2048
 2048 tiene 4 digitos

 Ingrese numero: 12
 12 tiene 2 digitos

 Ingrese numero: 0
 0 tiene 1 digito

*/

/*
var status = true
print("CONTADOR DE DÍGITOS.")

//Contar la cantidad de dígitos que tiene un número entero
func digitCounter (num: Int) {
    let chain = String(num), digitnum = chain.count
    
    if digitnum == 1 {
        print("\(num) tiene \(digitnum) digito.")
        
    } else {
        print("\(num) tiene \(digitnum) digitos.")
        
    }
    
}


while(status == true){
    print("Ingrese número:")
    if let input: Int = Int(readLine()!){
        digitCounter(num: input)
        status = false
        
    } else {
        print("‼️Solo puede digitar números enteros‼️.\n")
        status = true
        
    }
}
*/
