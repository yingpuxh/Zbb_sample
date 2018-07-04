#!/bin/bash
#source /cvmfs/sft.cern.ch/lcg/views/LCG_90/x86_64-slc6-gcc62-opt/setup.sh
#export PYTHIA8DATA=/cvmfs/sft.cern.ch/lcg/views/LCG_90/x86_64-slc6-gcc62-opt/share/Pythia8/xmldoc/
#echo "== path == "
#pwd
#echo "== starting == "
#ls -alrth
#tar -xzf mg_image.tar.gz
#echo "== done untaring == "
#source rivet/rivetenv.sh.submit;
#ls -alrth
#mkdir Zbb_NLO_7_decay/
#pwd
#cp submit_jobs_condor.py Zbb_NLO_7_decay/
#cp Zbb_NLO_7_decay.lhe Zbb_NLO_7_decay/
#cp main321 Zbb_NLO_7_decay/
#cp main321.cmnd Zbb_NLO_7_decay/
#cd rivet/addons
#rm -r -f FatHiggsTagging.cc
#cp ../../FatHiggsTagging.cc .
#cp ../../FatHiggsTagging.cc ../../Zbb_NLO_7_decay/
#source make.sh
#cd ../../Zbb_NLO_7_decay/
#ls -alrth
#pwd
#mv Zbb_NLO_7_decay.lhe unweighted_events.lhe
#cp unweighted_events.lhe ../pythia8235/examples
#cd ../pythia8235/examples
#ls -alrth
#sed -i '1!b;s/3.0/1.0/' unweighted_events.lhe
#./main321 unweighted_events.lhe
#mv ofile.hepmc Zbb_NLO_7_decay.hepmc
#ls -alrth
#cp Zbb_NLO_7_decay.hepmc ../../Zbb_NLO_7_decay
#cd ../../Zbb_NLO_7_decay
#rivet -a FatHiggsTagging --process higgs -o Zbb_NLO_7_decay.yoda Zbb_NLO_7_decay.hepmc -n 25900
#yoda2root Zbb_NLO_7_decay.yoda
#rm -f Zbb_NLO_7_decay.hepmc
#ls -alrth
#cd ..
#ls -alrth
#echo "== done == "
#ls -d is the command to show folder without unpacking folders
#source /cvmfs/sft.cern.ch/lcg/views/LCG_latest/x86_64-slc6-gcc62-opt/setup.sh
#export PYTHIA8DATA=/cvmfs/sft.cern.ch/lcg/views/LCG_latest/x86_64-slc6-gcc62-opt/share/Pythia8/xmldoc/
source /cvmfs/sft.cern.ch/lcg/views/LCG_90/x86_64-slc6-gcc62-opt/setup.sh
export PYTHIA8DATA=/cvmfs/sft.cern.ch/lcg/views/LCG_90/x86_64-slc6-gcc62-opt/share/Pythia8/xmldoc/
echo "== path == "
pwd
echo "== starting == "
ls -alrth
tar -xzf mg_image.tar.gz
echo "== done untaring == "
#bin/mg5 Zbb_NLO_7_decay.input
mkdir Zbb_NLO_7_decay/
cp Zbb_NLO_7_decay.lhe Zbb_NLO_7_decay/
ls -alrth
source rivet/rivetenv.sh.submit;
cd rivet/addons
rm -r -f FatHiggsTagging.cc
cp ../../FatHiggsTagging.cc .
source make.sh
pwd
cd ../../templates/
rm -r -f main321.cmnd
cp ../main321.cmnd .
#cd ../Zbb_NLO_7_decay/Events/run_01
cd ../Zbb_NLO_7_decay/
ls -alrth
pwd
#cp ../../../templates/main321* .
cp ../templates/main321* .
#gunzip unweighted_events.lhe.gz
#cp unweighted_events.lhe ../../../pythia8235/examples
mv Zbb_NLO_7_decay.lhe unweighted_events.lhe
cp unweighted_events.lhe ../pythia8235/examples
ls -alrth
#cd ../../../pythia8235/examples
cd ../pythia8235/examples
#sed -i '1!b;s/3.0/1.0/' unweighted_events.lhe
./main321 unweighted_events.lhe
mv ofile.hepmc Zbb_NLO_7_decay.hepmc
#mv Zbb_NLO_7_decay.hepmc ../../Zbb_NLO_7_decay/Events/run_01
#cd ../../Zbb_NLO_7_decay/Events/run_01
mv Zbb_NLO_7_decay.hepmc ../../Zbb_NLO_7_decay
cd ../../Zbb_NLO_7_decay
rivet -a FatHiggsTagging --process higgs -o Zbb_NLO_7_decay.yoda Zbb_NLO_7_decay.hepmc -n 25900
yoda2root Zbb_NLO_7_decay.yoda
rm -f Zbb_NLO_7_decay.hepmc
echo "== done == "
