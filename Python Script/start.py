import shutil
import os
import time
from os import path
from apscheduler.schedulers.blocking import BlockingScheduler
from dotenv import load_dotenv
load_dotenv()
sched = BlockingScheduler()



R = '\033[31m' # Red
W = '\033[0m'  # White
C = '\033[36m' # Cyan
Y = '\033[1;33m' # Yellow
G = '\033[1;32m' # Green
os.system('cls')


try: 
    print('\n',  Y + '>> ' + C + "I'm working... " + W)
    def monitoring_job():
        if(path.exists(os.environ.get("ORIGIN_FOLDER")) != True) :
            os.mkdir(os.environ.get("ORIGIN_FOLDER"))

        if (path.exists(os.environ.get("DESTINY_FOLDER")) != True):
            os.mkdir(os.environ.get("DESTINY_FOLDER"))
            exit()

        lista = os.listdir(os.environ.get("ORIGIN_FOLDER")) 
        lista_len = len(lista)
        x = 0

        while x < lista_len:
            folderOrigin = os.environ.get("ORIGIN_FOLDER") + lista[x]
            folderDestiny = os.environ.get("DESTINY_FOLDER") + lista[x] 
            shutil.move(folderOrigin, folderDestiny)
            print('\n', 'MOVED FILES!',  x, '-', G + lista[x] + W )
            x += 1

    sched.add_job(monitoring_job, 'interval', seconds=5)
    sched.start()

except KeyboardInterrupt:
    print('\n' + R + "Program Ended" + W)