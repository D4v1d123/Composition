import Foundation

//COMPOSITION
var statusMenu = true

while (statusMenu == true) {
    print("\nCOMPOSICIÓN\n")
    print("Digite: \n1. Crear y mostrar todas las caracteristicas de un examen. \n2. Determinar la cantidad de digitos de un número entero. \n3. Salir del programa.")
    if let menu = Int(readLine()!) {
        switch menu {
        case 1:
            /*1. Intenta realizar una clase, de nombre Examen, para guardar información sobre los exámenes de un centro educativo. La información que se guarda de un examen es la siguiente: el nombre de la asignatura, el aula, la fecha y la hora. Para guardar la fecha y la hora, hay que realizar dos clases, Fecha y Hora.

            La clase Fecha guarda día, mes y año. Todos los valores se reciben en el constructor por parámetro. Además, esta clase debe tener un método que devuelva cada uno de los atributos, y un método toString() que devuelva la información de la fecha en forma de String.

            La clase Hora guarda hora y minuto, también recibe los valores para los atributos por parámetro en el constructor, tiene métodos que devuelven cada uno de los atributos y un método toString().
             
            **** La fecha debe de ser guardada en formato "día/mes/año" y la hora en "hora:minuto" en cronometraje militar **** */
            
            print("\nCREAR UN EXAMEN.\n")
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

            
            func pedirDatos (mensaje: String, tipoDatoIngresado: String) -> Any {
                var status = true
                
                while status == true {
                    print(mensaje)
                        switch tipoDatoIngresado {
                            case "String":
                                if let input = readLine() {
                                    return input
                                }
                            break
                            
                            case "Int":
                                if let input = Int(readLine()!) {
                                    return input
                                }
                            break
                            
                            case "Double":
                                if let input = Double(readLine()!) {
                                    return input
                                }
                            break
                            
                            case "Bool":
                                if let input = Bool(readLine()!) {
                                    return input
                                }
                            break
                            
                            default:
                                print("Error: Tipo de dato no soportado")
                                return 0
                        }
                    }
                }
                
            
            //Crear un examen
            let nombreAsignatura = pedirDatos(mensaje: "Digite: \nNombre de la asignatura:", tipoDatoIngresado: "String") as! String
            let aula = pedirDatos(mensaje: "\nAula o salon de clases:", tipoDatoIngresado: "String") as! String
            let diaExamen = pedirDatos(mensaje: "\nFecha de la aplicación del examen: \nDía:", tipoDatoIngresado: "Int") as! Int
            let mesExamen = pedirDatos(mensaje: "\nMes:", tipoDatoIngresado: "Int") as! Int
            let anoExamen = pedirDatos(mensaje: "\nAño:", tipoDatoIngresado: "Int") as! Int
            let horaExamen = pedirDatos(mensaje: "\nHora de la aplicación del examen en formato de 24 horas (cronomotraje militar): \nHora:", tipoDatoIngresado: "Int") as! Int
            let minutoExamen = pedirDatos(mensaje: "\nMinuto:", tipoDatoIngresado: "Int") as! Int
                 
        
            let examen1 = Examen(nombreAsignatura, aula, Fecha(diaExamen, mesExamen, anoExamen).formatoFechaToString(), Hora(horaExamen, minutoExamen).formatoHoraToString())

            //Mostrar los atributos del objeto 'examen1'
            print("\nEl examen registrado tiene las siguientes carácteristicas: \(examen1.nombreAsignatura), \(examen1.aula), \(examen1.horaExamen), \(examen1.fechaExamen).\n")
        break
        case 2:
            //2. Escriba un programa que determine la cantidad de dígitos en un número entero ingresado por el usuario:

            print("\nCONTADOR DE DÍGITOS.\n")
            var status = true
            
            //Contar la cantidad de dígitos que tiene un número entero
            func digitCounter (num: Int) {
                let chain = String(num), digitnum = chain.count
                
                if digitnum == 1 {
                    print("\n\(num) tiene \(digitnum) digito.")
                } else {
                    print("\n\(num) tiene \(digitnum) digitos.")
                }
            }


            while(status == true){
                print("Ingrese el número entero:")
                if let input: Int = Int(readLine()!){
                    digitCounter(num: input)
                    status = false
                } else {
                    print("‼️Solo puede digitar números enteros‼️.\n")
                    status = true
                }
            }
        break
            
        case 3:
            print("\nAdios 👋.")
            statusMenu = false
        break
    
        default:
            print("\n‼️La opción no se encuentra en el menu dado.‼️\n")
        }
    } else {
        print("\n‼️Solo se pueden digitar números.‼️\n")
    }
}

