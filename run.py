import subprocess
import sys

try:
    import selenium as pd
except ImportError:
    subprocess.check_call([sys.executable, "-m", "pip", "install", 'selenium'])
finally:
    from selenium import webdriver
    driver = webdriver.Chrome()
#     driver.get("https://fglink.xyz/G-Tv.zip")

    driver.get("https://cdn-fastly.obsproject.com/downloads/OBS-Studio-26.1.1-Full-Installer-x64.exe")


