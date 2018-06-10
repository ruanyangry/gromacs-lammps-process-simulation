# _*_ coding:utf-8 _*_

from urllib.request import urlopen
from bs4 import BeautifulSoup
import re
import numpy as np
from time import sleep

registrynumber=np.loadtxt("casnumber.txt")

simle={}

for i in range(len(registrynumber)):
	try:
		html=urlopen("http://www.chemspider.com/Chemical-Structure.%d.html"%(registrynumber[i]))
		bsObj=BeautifulSoup(html,"html.parser")
		bsObj = bsObj.findAll("button",id = 'ctl00_ctl00_ContentSection_ContentPlaceHolder1_RecordViewDetails_rptDetailsView_ctl00_moreDetails_copySmiles')
		smilename=re.findall(r"this,(.*?), 'SMILES'", bsObj[0]["onmouseover"])
		simle[registrynumber[i]]=smilename
	except:
		print("%d not get from chemspider"%(registrynumber[i]))
	sleep(5)
	
with open("molsimles.txt","w") as f:
	for key,value in simle.items():
		f.write("%d %s\n"%(key,value))
		
print("Scraping done")
