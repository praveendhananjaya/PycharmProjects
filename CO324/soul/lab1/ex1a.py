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
    users = dict()

    with open(filename) as f:
        for line in f:
            student = line.split()

            one_student = Student( surname= student[0] , given_name= student[1] , registered_courses= student[2:] )
            #print(one_student.surname)
            users[one_student.surname,one_student.given_name] = one_student.registered_courses #(one_student)


    #users =  sorted(users , key = lambda s: len(s.registered_courses) )

    return users


x = load_course_registrations('course.txt')
y = x['aaa' , 'aa' ]
print(y)



