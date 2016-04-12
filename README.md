# 2016_Protein_stability_evolution
### Author: Andrew Nguyen; PhD Candidate at the University of Vermont (https://adnguyen.github.io/)
### Date initiated: 20160321    
### Date modified: 20160411     
### This work was supported by the National Science Foundation, Division of Environmental Biology (1136644)      
### This work is in collaboration with VGN proteomics facility: https://vgn.uvm.edu/proteomics


#Objectives     
This project is interested in elucidating the adaptive shifts in protein stability across the whole proteome between ant species that occupy different thermal regimes. We couple unfolding experiments, by temperature treating whole ant lysates and ultracentrifugation with TMT labeling for LC-MS/MS to quantify protein stability.(For TMT details, see https://www.thermofisher.com/us/en/home/life-science/protein-biology/protein-mass-spectrometry-analysis/protein-quantitation-mass-spectrometry/tandem-mass-tag-systems.html). The TMT labeling and unfolding experiment can be found in the protocols. This github repository will serve as a reference so that our approaches, experiments, and analyses are all reproducible. 

#Directory layout:    
**/Protocols/**    
1) This directory has the protocols for TMT labeling in pdf form from the vendor, word document of trypsinizing. The most important and tractable document is the protocol.md which outlines most to all of the protocols we use:
  * Buffers (covaris + protease inhibitors)
  * Unfolding experiments (temperature treatments)
  * Polyacrylamide gels (making them) 
  * Trypsin digestions
  * TMT labeling (and the mass spec we use)

**/Data/**     
1) I have arranged all the raw data by year. They are formatted as excel files.      
2) Data in csv format that is  outside the year subdirectories are used for analysis in the Scripts_analysis directory. 
3) Proteome database: fasta files of all the ant genomes as of 20160411

**/Script_analysis/**    
1) This is where all the magic happens. I have preliminary scripts so far. I fit unfolding curves and estimate the melting temperatures and slope. I use R and R markdown. 
2) I also have a preliminary script that estimates the gibbs free energy of each protein.  

**/Results/**    
1) Powerpoint slides of the PAGE gels we run    
2) Figures (gibbs free energy estimates, proteome unfolding curves)    
3) Output from the Script_analysis    

#To do list:      
1) I need to add metadata to my data files 
