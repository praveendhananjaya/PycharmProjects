#Eno : E/16/081
from dataclasses import dataclass
from typing import List, Dict

@dataclass
class Student:

    """A student's course registration details"""
    given_name: str
    surname: str
    registered_courses: List[str]


def load_course_registrations(filename: str) -> dict:
    """ Returns a list of Student objects read from filename"""
    Student = dict()
    with open( filename ) as f:
        for line in f:
            detail = line.strip().split(',')
            Student[ str(detail[0]) , str(detail[1])  ] = detail[2:]        # dual key


    return Student

Student = (load_course_registrations("student_details.txt"))
print(Student['praveen', 'Dhananjaya'])     # test
