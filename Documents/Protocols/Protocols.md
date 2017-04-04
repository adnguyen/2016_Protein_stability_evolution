# Protocols for anything related to protein stability     

Authors: Amanda S. Meyer, Andrew Nguyen     

Initiated: 20160324      
Updated: 20170404

This work is done in collaboration with:     
 * Dr. Bryan Ballif's lab http://www.uvm.edu/~bballif/      
 * VGN proteomics facility https://vgn.uvm.edu/proteomics    
 
<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.     

------    

# Table of contents    

- [Initial Notes](#id-section1)
- [Making buffers for protein isolations](#id-section2)
- [Protein unfolding assay through qPCR](#id-section3)
- [Protein unfolding assay through centrifugation](#id-section4)
- [Making Polyacrylamide gels](#id-section5)
- [Trypsin Digestion of stained proteins in polyacrylamide gels in preparation for Mass Spectrometry ](#id-section6)
- [Tandem Mass Tag (TMT) labeling](#id-section7)
 

------    

<div id='id-section1'/>
## Initial notes:    
1) Mechanical forces and bubbles can denature proteins. Be careful in how you pipette.     
2) Minimize contamination: don't touch your face and phone with your gloves and then continue to handle samples   
3) **Everything is done on COLD ICE unless specified otherwise**

------     

<div id='id-section2'/>    

## Making buffers for protein isolations:     

We use a commercial buffer SuperB by Covaris Inc with protease inhibitors to isolate "native" proteins. 

### Reagents    

Protease Inhibitors:    
* Pepstatin and Leupeptin- https://us.vwr.com/store/catalog/product.jsp?product_id=7805764           
* Phenylmethylsulfonyl fluoride (PMSF)- http://www.sigmaaldrich.com/catalog/product/sigma/p7626?lang=en&region=US          
* 0.5 M EDTA  http://www.affymetrix.com/estore/esearch/search.jsp?pd=130309&N=4294967293    
* 0.5 M EGTA  https://www.alfa.com/en/catalog/J60767/     

Covaris superB buffer: http://covarisinc.com/products/cryoprep-extraction/extraction-buffers/     


### Recipe    

We use the covaris superB buffer which is optimized for isolating Native proteins with 5x protease inhibitors    


|Reagent| Initial Conc.| Final conc| vol to add for 1 mL |
|---|---|---|---|
|Covaris superB buffer|1x | ~1x| 900 uL|
|Pepstatin|1000x|5x|5 uL|
|Leupeptin|1000x|5x|5 uL |
|PMSF|100x| 5x| 50 uL||
|EDTA|500 mM|10 mM|20 uL|
|EGTA|500 mM|10 mM|20 uL|
Total|||1 mL|    


------

<div id='id-section3'/>    

## Protein unfolding assay through qPCR (also known as thermal stability shift assay    

relevent ref:
 * Niesen FH, Berglund H, Vedadi M. 2007. The use of differential scanning fluorimetry to detect ligand interactions that promote protein stability. Nat. Protocols 2:2212–2221.

**Notes, reagents.**     
 * fluorescent dye: https://www.thermofisher.com/order/catalog/product/S6650
 * ABI steponeplus machine: https://www.thermofisher.com/order/catalog/product/4376600      
 * 96 well Fast microamp plate: https://www.thermofisher.com/order/catalog/product/4346906      
 * Ultracentrifuge: Beckman https://www.beckmancoulter.com/wsrportal/wsr/research-and-discovery/products-and-services/centrifugation/index.htm    
 * Ultracentrifuge tubes:   
 * Bradford assay: http://www.bio-rad.com/en-us/product/bradford-protein-assay?pcp_loc=catprod    
 * Qubit protein assay: https://www.thermofisher.com/order/catalog/product/Q33211    
 * Bullet blender (Next Advance)  http://www.nextadvance.com/product/bullet-blender-standard/    
 * 1.4 mm Zirconium silicate grinding beads (Quackenbush co., inc.) : http://www.quackco.com/qbzirc.htm      
 * 2mL Homogenizing tubes (Sarstedt, Germany? ): https://www.sarstedt.com/en/products/laboratory/screw-cap-micro-tubes-reaction-tubes/screw-cap-micro-tubes/product/72608/     
**Steps:**    

1. Homogenize ants or your favorite ectotherm    
 * Add flash frozen ants into homogenizing tubes with 400 uL covaris superb buffer with 5x protease inhibitors   
 * Place in bullet blender and homogenize for 15 s, top speed; immediately place on ice    

2. Centrifuge 4 C for 5 minutes to remove large particulates and transfer supernatant to ultracentrifuge tube.     
3. Ultracentrifuge 100,000 g at 4 C 20 minutes     
4. Quantify protein concentration  with bradford or qubit     
5. Make 2X assay buffer (which is your buffer [covaris for us] + 16X fluorescent dye [sypro orange])
6. Dilute proteins to 1ug/uL (you might want to play with this condition)  
7. I like to add 50 uL protein with 50uL 2X assay buffer    
  * Final conc of dye is 8X   


8. Place in thermocycler and ramp from 4C to 95C
9. Grab normalized fluorescence (should be a boltzmann function) 
  
  


------

<div id='id-section4'/>    

## Protein unfolding assay through ultracentrifugation         

**Everything needs to be on ice!!!**     
**Steps:**         
1. Homogenize ants or your favorite ectotherm    
 * Add flash frozen ants into homogenizing tubes with 400 uL covaris superb buffer with 5x protease inhibitors   
 * Place in bullet blender and homogenize for 15 s, top speed; immediately place on ice      

2. Centrifuge 4 C for 5 minutes to remove large particulates and transfer supernatant to ultracentrifuge tube.     
3. Ultracentrifuge 100,000 g at 4 C 20 minutes        
4. Quantify protein concentration        
5. Temperature 50-100 ug of protein (in 50-100 uL vol, so 1 ug/ uL)  treat (in a thermocycler) over 10 points: 15, 20, 25, 30, 35, 40, 45, 50, 55, 60 C      
 * Have 4-6 replicates per temperature treatment    
 * Save 2-3 replicates to show that your treatments aren't lost and Ultracentrifuge 100,000 g at 4 C 20 minutes  for the rest of the replicates      
6. Quantify protein concentration and run samples on polyacrylamide gels.    
 * The temperature treated, non centrifuged samples (we refer to them as "TOtal") should not decrease in concentration      
 * You should detect temperature depedent unfolding across temperatures after ultracentrifugation (fraction non-denatured)       
 


------   

<div id='id-section5'/>    

## Making polyacrylamide gels and electrophoresis(PAGE)       


**Reagents and notes:**     

* Acryl bis 37.5:1 - https://www.nationaldiagnostics.com/electrophoresis/product/protogel-30     
* Stacking buffer - 0.5 M Tris pH 6.83 0.5% SDS
* Separating buffer - 3M Tris Hcl (pH 8.8) 10% SDS   
* dd H20 
* 10% APS   
* TEMED - http://www.sigmaaldrich.com/catalog/product/sigma/t9281?lang=en&region=US    
* Gel apparatus (Tetracell): http://www.bio-rad.com/en-us/category/vertical-apparatus?pcp_loc=catprod     
* Handcast system (he Mini-PROTEAN® Tetra handcast systems): http://www.bio-rad.com/en-ch/product/electrophoresis-chambers/mini-protean-tetra-handcast-systems    

 
**Steps:**
Making a PAGE     
          
1) Clean two 125 mL earlemeyer flasks so that you can make a separating and stacking gel       
2) Prep hand cast: clean with soap and water, spray with ethanol; don't touch the glass plates with gloves     
3) Recipe for making separating gel (columns with percentages are volumes to add for the reagent in the row)    

* Separating gel recipe for each gel: 

|Reagent| 7.5% | 10%| 12%|
|---|---|---|---|
|Acryl bis 37.5:1|1.9 mL |2.5 mL |3.0 mL|
|Separating Buffer| 1.9 mL | 1.9 mL| 1.9 mL|
|dd H_20| 3.7 mL| 3.1 mL| 2.6 mL|
|10 % APS| 50 uL | 50 uL| 50 uL|
|TEMED| 5 uL | 5 uL| 5 uL|   



4) Quickly pipette ~4 mL into hand cast set up and add a layer of butanol so that the gel is horizontally even as it polymerizes (15-30 minutes? )       
5) As the separating gel is polymerizing, make stacking gel  
 * Stacking gel recipe for each gel: 

|Reagent| 4.2 % |
|---|---|
|Acryl bis 37.5:1|0.7 mL |
|Stacking Buffer| 1.3 mL | 
|dd H_20| 3.0 mL| 
|10 % APS| 50 uL | 
|TEMED| 5 uL |   



6) Back to handcast: Pour off butanol into waste receptacle (It stinks)     
7) Add stacking mix from step 5 to handcast and fill to brim    
8) Add a comb; place it in tight; let polymerize    

I need pictures for all of this....




------



<div id='id-section6'/>     

## Trypsin Digestion of stained proteins in polyacrylamide gels in preparation for Mass Spectrometry     

**Reagents and notes: ** 
* Trypsin
* 


### Steps:    

**Note: OK Stopping Points = OSP!**     

1)	Clean a large glass plate with 70% ethanol (until squeaky clean). Let the plate dry.     
2)	Put about 1 mL HPLC water on plate, and then place gel on top of water. Also, put some HPLC water on top of gel (~500 uL).     
3)	Label a 1.5 mL or 0.6 mL (low resistence) microcentrifuge tube for each protein band/spot to be analyzed. 
 *	Clean the cutting blade with 70% ethanol before using and between cutting each spot.     
 *	When cutting out protein spots, be careful to cut carefully around the spot to minimize the amount of gel you take with it    
 *	Cut out selected gel spot/band region. Cut the band into 1 mm cubes, and transfer it to the labeled tube with 400 uL HPLC water.    
4)	Incubate at room temperature for five minutes.     

**---> OSP!!** 

5)	Centrifuge at high speed for 30 seconds. Carefully pipette off the water and discard it in the waste container provided
 * all waste goes into same container in this protocol → Water, acetonitrile, ammonium bicarbonate, etc.     
 * You do not need to change tips because the proteins are still in the gel. 
 * **Be careful not to lose the gel pieces in this process.**    
  
 
6)	Add 500 uL of destain solution (50mM ammonium bicarbonate, 50% acetonitrile) to each tube. 
 * When pipetting acetonitrile be careful to transfer it quickly from container to tube as it tends to leak from pipet tips.    
 * Close the tube cap and mix gently by inversion. Incubate the tubes at 37oC for 30 minutes (this can be longer).    
 * Destaining usually takes a long time. Be prepared to spend a couple of hours doing it.         

 
**---> OSP!!**     


7)	Repeat destain step until there is absolutely no blue color left in any of the gel pieces. 
 * Acetonitrile is poisonous; do not throw it down the drain.      
 * Repeat one more time if needed. Change gloves if you get acetonitrile on them and wash skin with water if it contacts the acetonitrile.      


8)	When the gel sample is clear and no longer contains blue color, centrifuge the tube at high speed for 30 seconds. Carefully remove all of the destain solution and discard it in the waste receptacle.     
9)	Add 500uL of 100% acetonitrile to each tube. 
 * The gel pieces should be entirely immersed, if not, add more.     
 * The gel pieces will turn white as they dehydrate. 
 * Incubate the tubes for 10 minutes at room temperature (no longer than 10 minutes!).     
  
   * If they don’t turn completely white then remove liquid and add more acetonitrile, then they will turn white.         



10)	Centrifuge for 30 seconds and carefully pipet off all of the acetonitrile. Discard in the provided waste receptacle. Use a 200uL pipettor to carefully remove the residual liquid from the tube. 
 * **Repeat acetonitrile step (#9)**     


11)	Keep the tube cap open and let the gel dry completely for 5 minutes at room temperature (this can be longer; hours to dry = ok) or speed vac for 2 minutes.     


**---> OSP!!**

### Reduction of Disulfide Bonds     

1)	Add 120 uL of 10 mM DTT (diothiothreitol) in 100 mM ammonium bicarbonate (will probably need to dilute) to the dried gel pieces.    
2)	Incubate at 56C for 1 hour. Make sure gel pieces are fully covered.     

### Alkylation with Iodoacetamide    


1)	Spin gel pieces down for 30 s at max speed. Remove and discard DTT.      
2)	Add 120 uL of 55mM (10mg/mL) IAA (iodoacetimde) in 100 mM ammonium bicarbonate (will probably need to dilute). Make sure gel pieces are fully covered.     
3)	Incubate gel pieces at room temperature for 45 minutes in the DARK.   
4)	Spin down gel pieces for 30 s at max speed. Remove and discard IAA.      
5)	Add 120 uL (or enough to cover gel pieces) of 100 mM ammonium bicarbonate to the gel pieces. Incubate at room temperature for 10 minutes.        
6)	Remove and discard ammonium bicarbonate, and add 120 uL (or enough to cover gel pieces) of 100% acetonitrile to the gel pieces. Incubate at room temperature for 10 minutes. Remove and discard acetonitrile, and then repeat (#6).     
7)	Add 120 uL of 100 mM ammonium bicarbonate or 100 mM TEAB to the gel pieces. Incubate at room temperature 10 minutes. Spin down gel pieces for 1 minute at max speed. Remove and discard ammonium bicarbonate.     
8)	Add 120 uL (or enough to cover gel pieces) of 100% acetonitrile to the gel pieces. Incubate at room temperature for 10 minutes. Remove and discard acetonitrile, and then repeat (#8).    
9)	Speed vac gel pieces for 5 minutes to dry (completely dry).      
10)	Move on to trypsin digestion.      

### Trypsin Digestion :    

1)	Place the tubes on ice for 5 minutes. Add 35 uL of trypsin solution. Add 50 uL of 100 mM ammonium bicarbonate to completely cover gel pieces.

 * Recipe for trypsin solution   
  
 
|Reagent|Inital conc.| Final conc.|volume for 1 rxn|
|---|---|---|---|
|Trypsin| 20ug/50uL| 20ug in 196 uL| 1 uL|
|TEAB (triethyl ammonium bicarbonate)|100 mM? |40 mM?|80 uL|  
|HPLC H20| ||100 uL|
|MeCN (acetonitrile)| 100%| 5%| 10 uL|   




2)	Incubate the tubes on ice for 15 minutes. 
3)	Transfer the tubes to a 37oC incubator. Incubate the tubes OVERNIGHT (8-16 hours). Don’t incubate more than 18 hours!!
**---> OSP!!**
4)	Store the tubes in the refrigerator (4oC) or continue with extractions. Note: Can freeze at -80oC for longer term storage. 
**---> OSP!!**    

###Extracting Tryptic peptides:
1.	Briefly (30 s) spin tube containing in-gel digestion.
2.	Label new 0.6mL tube (could use 1.5mL tube if needed) low resistance. 
3.	Pipet off (of the gel pieces) the tryptic digest solution and place in the respective (new) 0.6mL tube (Labeling is critical here! – transferring to the wrong tube is where most mistakes are made).
4.	TO THE GEL PIECES add 100-150uL (make sure to add same amount to each sample) of extraction solution (50% acetonitrile, 2.5% formic acid)
a.	Quickly vortex tube. 
5.	Incubate at room temperature for 55 minutes. Spin gel pieces with extraction solution in microcentrifuge at full speed for 5 minutes. 
6.	Remove extraction solution and combine it to the digest solution in the appropriate 0.6mL tube. 
7.	TO THE GEL PIECES add 100 uL of 100% acetonitrile – again they should be completely covered (KEEP LIDS CLOSED in between pipetting). Quickly vortex and flip liquid to bottom of tube. Let sit on bench for 10 minutes. The gel pieces may begin to turn whitish – Flick to get gel pieces dislodged. 
8.	Briefly spin tubes.
9.	Combine the 100% acetonitrile solutions to the appropriate 0.6mL tubes. (Pipette up and down to mix).
10.	Add 50 uL of 100% MeCN (acetonitrile) to the gel pieces. Incubate at room temperature for 10 minutes. Spin tubes for 30 s at max speed. Remove MeCN and add to tubes with the tryptic digestion solution. 
11.	Keep gel pieces until you have MS results in case the digestion didn’t work properly (store at -80C). The digestion won’t work well if pH is off, if it is too hot or too cold, or if the gel pieces become too thirsty (dehydrated).
12.	Quickly vortex 0.6mL tubes and briefly spin them (need to use 1.5mL tube sleeve in microcentrifuge). 
13.	Speed-vac 0.6mL tubes to dryness (this takes a long time). 
14.	If tubes have a white residue on the inside of the tubes or white pellet, add 20 uL of 50% acetonitrile, 50% HPLC water, and speed vac until dried. Repeat until there is no longer any white residue. The white residue is salt from the ammonium bicarbonate. This can affect labeling and LC-MS/MS analysis. 
15.	Freeze 0.6mL tubes at -20 or -80oC until labeling and/or LC-MS/MS analysis.

------


<div id='id-section7'/>    

## Tandem Mass Tag (TMT) labeling     

**All pipetting needs to be extremely accurate in this part of the protocol.**     


1.	Add 102.5 uL of 100 mM TEAB (triethyl ammonium bicarbonate) to each dried sample. 
2.	Briefly vortex tubes. 
3.	Equilibrate the TMT labeling reagents to room temperature (at least 5 minutes). Spin labeling reagents down at max speed for 2 minutes. 

 * ***This part is very important. If labeling reagents are not equilibrated to room temperature then moisture condensation can occur and the reagents will be affected. The reagents are a powder and need to be spun down to prevent loss of reagents when opening the tubes.***      


4.	Add 41 uL of anhydrous (100%) acetonitrile to each labeling reagent tube. Dissolve labeling reagent in anhydrous acetonitrile for 5 minutes, shaking, at room temperature. 
5.	Carefully add all 41 uL of each labeling reagent to its respective sample. 
6.	Incubate samples with labeling reagents added at room temperature for 1 hour, shaking. 
7.	Add 8 uL of 5% hydroxylamine to each sample with labeling reagent added.

 * **This is important step. The hydroxylamine will quench the labeling reaction, thus preventing cross-labeling when the samples are combined.**       


8.	Incubate at room temperature, shaking, for 15 minutes. 
9.	Combine the samples in a clean, low resistance 1.5 mL microfuge tube. 
10.	Dry down sample using speed vac, then store at -80C until LC-MS/MS analysis. 

LC-MS/MS:
Q-Exactive Hybrid Quadupole-Orbitrap Mass Spectrometry  http://planetorbitrap.com/q-exactive#.VvW38hIrJTY    
