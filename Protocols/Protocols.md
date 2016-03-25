#Protocols for anything related to protein stability     


Authors: Amanda S. Meyer, Andrew Nguyen     

Initiated: 20160324      
Updated: 20160324
 
------

# Table of contents
- [Initial Notes](#id-section1)
- [Making buffers for protein isolations](#id-section2)
- [Protein unfolding assay through qPCR](#id-section3)
- [Protein unfolding assay through centrifugation](#id-section4)
- [Making Polyacrylamide gels](#id-section5)
- [Trypsin Digestion](#id-section6)
- [Tandem Mass Tag (TMT) labeling](#id-section7)
 

------
<div id='id-section1'/>
##Initial notes:    
1) Mechanical forces and bubbles can denature proteins. Be careful in how you pipette.     
2) Minimize contamination: don't touch your face and phone with your gloves and then continue to handle samples   
3) **Everything is done on COLD ICE unless specified otherwise**

------

<div id='id-section2'/>
##Making buffers for protein isolations: 

We use a commercial buffer SuperB by Covaris Inc with protease inhibitors to isolate "native" proteins. 

###Reagents
Protease Inhibitors:   
* Pepstatin and Leupeptin- https://us.vwr.com/store/catalog/product.jsp?product_id=7805764           
* Phenylmethylsulfonyl fluoride (PMSF)- http://www.sigmaaldrich.com/catalog/product/sigma/p7626?lang=en&region=US          
* 0.5 M EDTA  http://www.affymetrix.com/estore/esearch/search.jsp?pd=130309&N=4294967293    
* 0.5 M EGTA  https://www.alfa.com/en/catalog/J60767/     

Covaris superB buffer: http://covarisinc.com/products/cryoprep-extraction/extraction-buffers/     


###Recipe
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
##Protein unfolding assay through qPCR (also known as thermal stability shift assay
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
3. Ultracentrifuge 100,000 g at 4 C     
4. Quantify protein concentration  with bradford or qubit     


------

<div id='id-section4'/>
##Protein unfolding assay through ultracentrifugation       
**Everything needs to be on ice!!!**     
**Steps:**         
1. Homogenize ants or your favorite ectotherm    
 * Add flash frozen ants into homogenizing tubes with 400 uL covaris superb buffer with 5x protease inhibitors   
 * Place in bullet blender and homogenize for 15 s, top speed; immediately place on ice      

2. Centrifuge 4 C for 5 minutes to remove large particulates and transfer supernatant to ultracentrifuge tube.     
3. Ultracentrifuge 100,000 g at 4 C        
4. Quantify protein concentration        
5. Temperature 50-100 ug of protein (in 50-100 uL vol, so 1 ug/ uL)  treat (in a thermocycler) over 10 points: 15, 20, 25, 30, 35, 40, 45, 50, 55, 60 C      
 * Have 4-6 replicates per temperature treatment    
 * Save 2-3 replicates to show that your treatments aren't lost and Ultracentrifuge 100,000 g at 4 C  for the rest of the replicates      
6. Quantify protein concentration and run samples on polyacrylamide gels.    
 * The temperature treated, non centrifuged samples (we refer to them as "TOtal") should not decrease in concentration      
 * You should detect temperature depedent unfolding across temperatures after ultracentrifugation (fraction non-denatured)       
 


------
<div id='id-section5'/>
##Making polyacrylamide gels and electrophoresis(PAGE)     

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

Separating gel recipe for each gel: 

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
|---|---|---|---|
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
##Trypsin Digestion


------


<div id='id-section7'/>
##Tandem Mass Tag (TMT) labeling
