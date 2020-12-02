import json , dataclasses
from dataclasses import dataclass ,asdict
from enum import Enum


class EnhancedJSONEncoder(json.JSONEncoder):
        def default(self, o):
            if dataclasses.is_dataclass(o):
                return dataclasses.asdict(o)
            return super().default(o)


class State(Enum):
    OPEN = "open"
    ASSIGNED = "assigned"
    PROGRESSING = "progressing"
    CANCELLED = "cancelled"


@dataclass
class Task:
    id : int
    state : State  
    description : str

@dataclass
class StringValue:
    description : str

@dataclass
class openTask:
    id :int 
    description : str

@dataclass
class editTaskState:
    id :int
    state : State