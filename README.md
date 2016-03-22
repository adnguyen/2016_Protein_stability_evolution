# 2016_Protein_stability_evolution

#Objectives
This project is interested in elucidating the adaptive shifts in protein stability across the whole proteome between ant species that occupy different thermal regimes. We couple unfolding experiments, by temperature treating whole ant lysates and ultracentrifugation with TMT labeling for LC-MS/MS to quantify protein stability.(For TMT details, see https://www.thermofisher.com/us/en/home/life-science/protein-biology/protein-mass-spectrometry-analysis/protein-quantitation-mass-spectrometry/tandem-mass-tag-systems.html). The TMT labeling and unfolding experiment can be found in the protocols. This github repository will serve as a reference so that our approaches, experiments, and analyses are all reproducible. 

File layouts:    
/Protocols/    
1) This directory has a pdf for the TMT labeling. There still needs to be a methods word doc for the unfolding experiment.


/Data/     
1) I have arranged all the raw data by year. They are formatted as excel files.      
2) Data in csv format that is  outside the year subdirectories are used for analysis in the Scripts_analysis directory. 

/Script_analysis/    
1) This is where all the magic happens. I have preliminary scripts so far. I fit unfolding curves and estimate the melting temperatures and slope. I use R markdown. 

/Results/    
1) Powerpoint slides of the PAGE gels we run    
2) Figures    
3) Output from the Script_analysis    
