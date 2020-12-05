#Eno : E/16/081
from dataclasses import dataclass , asdict
from typing import List, Dict
from json import dumps ,dump

@dataclass
class Student:

    """A student's course registration details"""
    given_name: str
    surname: str
    registered_courses: List[str]


def load_course_registrations(filename: str) -> List[Student]:
    """ Returns a list of Student objects read from filename"""
    Out = []
    with open( filename ) as f:     # make student list
        for line in f:
            detail = line.strip().split(',')
            p = Student(  detail[0] , detail[1] , detail[2:] )
            Out.append(p)

    return Out

#load list
student_list =  load_course_registrations("student_details.txt")

s1 = Student("Saman","Silva",["CO324","CO321","CO325"])
dumps(asdict(s1))

# map each Student objects as dictionaries
student_dict = list(map(asdict, student_list))

# json open and  write
out_file = open("student_registrations.json", "w")
# dump student dict to output_file with indentation 3
dump(student_dict, out_file, indent=3 )
# file close
out_file.close()




