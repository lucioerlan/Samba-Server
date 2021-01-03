import shutil
import os
import time
from resources.existFolder import existFolder
from utils.style import style
from dotenv import load_dotenv

load_dotenv()
existFolder()


class service():
    def __init__(self):
        self.error = None

    def monitoring_job(self):
        lista = os.listdir(os.environ.get("ORIGIN_FOLDER"))
        lista_len = len(lista)
        x = 0

        while x < lista_len:
            folderOrigin = os.environ.get("ORIGIN_FOLDER") + lista[x]
            folderDestiny = os.environ.get("DESTINY_FOLDER") + lista[x]
            shutil.move(folderOrigin, folderDestiny)
            print('moved!', style.OKGREEN + lista[x] + style.ENDC)
            x += 1

        while True:
            time.sleep(1)
            self.monitoring_job()