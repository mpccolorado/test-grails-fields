package test



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PersonController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
        respond new Person(
                salutation: Salutation.Mr,
                firstName: "Martín Pablo",
                lastName: "Caballero",
                gender: Gender.male,
                birthDate: new GregorianCalendar(1987, Calendar.FEBRUARY, 9).time,
                email: "mpccolorado@gmail.com",
                address: new Address(
                        street: "Estados Unidos 264",
                        city: "Villa María",
                        country: "Argentina"
                )
        )
    }
}
