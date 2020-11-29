
import paho.mqtt.client as Mqtt
import paho.mqtt.subscribe as subscribe
import json , dataclasses
from dataclasses import dataclass ,asdict
from enum import Enum
from time import sleep
import logging

import paho.mqtt.publish as publish
import random, string, logging

import socket

class EnhancedJSONEncoder(json.JSONEncoder):
        def default(self, o):
            if dataclasses.is_dataclass(o):
                return dataclasses.asdict(o)
            return super().default(o)


broker="mosquitto"

class State(Enum):
    OPEN = "open"
    ASSIGNED = "assigned"
    PROGRESSING = "progressing"
    CANCELLED = "cancelled"


@dataclass
class Task(object):
    id : int
    state : State  
    description : str

@dataclass
class StringValue:
    description : str

