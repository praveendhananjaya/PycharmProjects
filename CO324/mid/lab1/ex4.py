from dataclasses import dataclass
from dataclasses import asdict
from json import dump,dumps
from typing import List, Dict

@dataclass
class Student:
    """A student's course registration details"""
    given_name: str
    surname: str
    registered_courses: List[str]



def load_course_registrations(filename: str) -> List[Student]:
    """ Returns a list of Student objects read from filename"""
    out = list()
    with open(filename) as fp:
        for line in fp:

            test=(line.rstrip().split(','))
            student = Student(test[0], test[1], test[2:])
            out.append(student)

    return out


Student_list = load_course_registrations('student_details.txt')

out = map(asdict,Student_list)
x = list(out)

fp = open('out.json','w+')

dump(x,fp,indent=3)