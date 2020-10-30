from dataclasses import dataclass

from typing import List, Dict

@dataclass
class Student:
    """A student's course registration details"""
    given_name: str
    surname: str
    registered_courses: List[str]



def load_course_registrations(filename: str) -> List[Student]:
    """ Returns a list of Student objects read from filename"""
    out = dict()
    with open(filename) as fp:
        for line in fp:

            test=(line.rstrip().split(','))
            #student = Student(test[0], test[1], test[2:])
            out[test[0],test[1]] = test[2:]

    return out



Student_list =  load_course_registrations('student_details.txt')
print(Student_list['praveen','Dhananjaya'])