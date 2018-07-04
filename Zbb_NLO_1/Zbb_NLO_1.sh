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
#mkdir Zbb_NLO_1/
#pwd
#cp submit_jobs_condor.py Zbb_NLO_1/
#cp Zbb_NLO_1.lhe Zbb_NLO_1/
#cp main321 Zbb_NLO_1/
#cp main321.cmnd Zbb_NLO_1/
#cd rivet/addons
#rm -r -f FatHiggsTagging.cc
#cp ../../FatHiggsTagging.cc .
#cp ../../FatHiggsTagging.cc ../../Zbb_NLO_1/
#source make.sh
#cd ../../Zbb_NLO_1/
#ls -alrth
#pwd
#mv Zbb_NLO_1.lhe unweighted_events.lhe
#cp unweighted_events.lhe ../pythia8235/examples
#cd ../pythia8235/examples
#ls -alrth
#sed -i '1!b;s/3.0/1.0/' unweighted_events.lhe
#./main321 unweighted_events.lhe
#mv ofile.hepmc Zbb_NLO_1.hepmc
#ls -alrth
#cp Zbb_NLO_1.hepmc ../../Zbb_NLO_1
#cd ../../Zbb_NLO_1
#rivet -a FatHiggsTagging --process higgs -o Zbb_NLO_1.yoda Zbb_NLO_1.hepmc -n 25900
#yoda2root Zbb_NLO_1.yoda
#rm -f Zbb_NLO_1.hepmc
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
#bin/mg5 Zbb_NLO_1.input
mkdir Zbb_NLO_1/
cp Zbb_NLO_1.lhe Zbb_NLO_1/
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
#cd ../Zbb_NLO_1/Events/run_01
cd ../Zbb_NLO_1/
ls -alrth
pwd
#cp ../../../templates/main321* .
cp ../templates/main321* .
#gunzip unweighted_events.lhe.gz
#cp unweighted_events.lhe ../../../pythia8235/examples
mv Zbb_NLO_1.lhe unweighted_events.lhe
cp unweighted_events.lhe ../pythia8235/examples
ls -alrth
#cd ../../../pythia8235/examples
cd ../pythia8235/examples
#sed -i '1!b;s/3.0/1.0/' unweighted_events.lhe
./main321 unweighted_events.lhe
mv ofile.hepmc Zbb_NLO_1.hepmc
#mv Zbb_NLO_1.hepmc ../../Zbb_NLO_1/Events/run_01
#cd ../../Zbb_NLO_1/Events/run_01
mv Zbb_NLO_1.hepmc ../../Zbb_NLO_1
cd ../../Zbb_NLO_1
rivet -a FatHiggsTagging --process higgs -o Zbb_NLO_1.yoda Zbb_NLO_1.hepmc -n 25900
yoda2root Zbb_NLO_1.yoda
rm -f Zbb_NLO_1.hepmc
echo "== done == "