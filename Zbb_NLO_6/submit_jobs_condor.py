#!/usr/bin/env python

import sys, getopt
import os

def main(argv):
        if len(sys.argv)<2:
                print 'run_mg_grid <initial string>'
                sys.exit(2)
        directory = sys.argv[1]
        inputfile = os.popen( "ls %s" % directory, "r" ).readlines()
        nfiles = len(inputfile)
        for i in range (0, nfiles):
          idString = directory.rstrip()
          ss = directory.rstrip()
          idStrings = '/'+ inputfile[i].rstrip()  
          idString += idStrings.rstrip()
          aa = idString.rstrip() 
          #print(aa)
          if not os.path.isdir(ss):
                print ss+" does not exist"
                sys.exit()

          ss = ss.replace('configs/', '')
          idString = idString.replace('configs/', '')
#          idString = idString.replace('check_sensitive_area/', '')
#          idString = idString.replace('T2bb_375/', '')
#          idString = idString.replace('Zbb_NLO_try/', '')
#          idString = idString.replace('mhs70_3000_500/', '')
#          idString = idString.replace('mhs70_coarse/', '') 
#          idString = idString.replace('mhs70_yoda/', '')
#          idString = idString.replace('mhs70_3_dots/', '')
#          idString = idString.replace('T2bb_for_2016DataBase_SUS_016_038/', '')
#          idString = idString.replace('check_sensitive_are_DM_another_2_dots/', '') 
          idString = idString.replace('Zbb_NLO/', '')
#          idString = idString.replace('mhs90_final_GX1_missing/', '') #it should be changed into withoutGXPi(3.14)
#          idString = idString.replace('mhs70_final_withoutGXPi_missing/', '')
#          idString = idString.replace('mhs70_final_GX1_missing/', '')
#          idString = idString.replace('mhs50_final_withoutGX2sqrtPi/', '')
          idString = idString.replace('.lhe', '')
          idStrings = idStrings.replace('.lhe', '')
          #print(idStrings)
          os.system('mkdir -p results'+idStrings.rstrip())
          os.system('chmod 774 '+aa)
          os.system('cp '+aa.rstrip()+' results'+idStrings.rstrip()+'/')
          os.system('cp submit_jobs_condor.py'+' results'+idStrings.rstrip()+'/')
          os.system('cp rivet/addons/FatHiggsTagging.cc'+' results'+idStrings.rstrip()+'/')
#          os.system('pwd')
          names=[]

          f1 = open('templates/template.sh', 'r')
          f2 = open('results'+idStrings.rstrip()+'/'+idString.rstrip()+'.sh', 'w')
          for line in f1:
                line=line.replace('SAMPLE', idString.rstrip())
                f2.write(line)
          f1.close()
          f2.close()


          f1 = open('templates/template.submit', 'r')
          f2 = open('results'+idStrings.rstrip()+'/'+idString.rstrip()+'.submit', 'w')
          for line in f1:
                line=line.replace('SAMPLE', idString.rstrip())
#                if ("transfer_output_files") in line:
#                        f2.write("transfer_output_files = "+', '.join(names)+'\n')
#                else:
                f2.write(line)
          f1.close()
          f2.close()

          f1 = open('templates/main321.cmnd', 'r')
          f2 = open('results'+idStrings.rstrip()+'/main321.cmnd', 'w')
          for line in f1:
                line=line.replace('SAMPLE', idString.rstrip())
                f2.write(line)
          f1.close()
          f2.close()

          f1 = open('templates/main321', 'r')
          f2 = open('results'+idStrings.rstrip()+'/main321', 'w')
          for line in f1:
                line=line.replace('SAMPLE', idString.rstrip())
                f2.write(line)
          f1.close()
          f2.close()

          print('cd results'+idStrings.rstrip()+'/; condor_submit '+idString.rstrip()+'.submit; cd -')
          os.system('cd results'+idStrings.rstrip()+'/; condor_submit '+idString.rstrip()+'.submit; cd -')


if __name__ == "__main__":
        main(sys.argv[1:])

