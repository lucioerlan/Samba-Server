import os
from os import path
from dotenv import load_dotenv
load_dotenv()


def existFolder():
  
    if(path.exists(os.environ.get("ORIGIN_FOLDER")) != True):
        os.mkdir(os.environ.get("ORIGIN_FOLDER"))
        
    if (path.exists(os.environ.get("DESTINY_FOLDER")) != True):
        os.mkdir(os.environ.get("DESTINY_FOLDER"))
