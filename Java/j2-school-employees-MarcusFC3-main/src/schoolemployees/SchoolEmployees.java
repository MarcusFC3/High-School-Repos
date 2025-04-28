package schoolemployees;

import java.util.ArrayList;

/**
 * Author:Marcus Jones Jr.
 * Chapter: 11
 * Lab: 1
 */
public class SchoolEmployees {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Person john = new Person("John", "4624 Caldwell Road", "JohnDoe@gmail.com");
        Student jane = new Student("Freshmen", "Jane", "1559 Nixon Avenue", "28457@fourcounty.net");
        Employee dale = new Employee("101", 60000, "Dale", "992 Travis Street", "Dr.Stevens@northweststate.edu");
        Faculty bruce = new Faculty(40, "Intern", "200", 40000, "Bruce", "4931 Middleville Road", "BruceFaulconer@fourcounty.net");
        Staff molly = new Staff("Team Leader", "435", 75000, "Molly", "2076 University Drive", "MollyMardowess@fourcounty.net");

        ArrayList people = new ArrayList();
        people.add(john);
        people.add(jane);
        people.add(dale);
        people.add(bruce);
        people.add(molly);
        for (Object person : people) {
            System.out.println(person);
        }

    }

}
