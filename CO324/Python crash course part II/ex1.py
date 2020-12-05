#Eno : E/16/081
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
    Out = []
    with open( filename ) as f:
        for line in f:
            detail = line.strip().split(',')        # split and strip
            p = Student(  detail[0] , detail[1] , detail[2:] )
            Out.append(p)

    return Out

print(load_course_registrations("student_details.txt"))