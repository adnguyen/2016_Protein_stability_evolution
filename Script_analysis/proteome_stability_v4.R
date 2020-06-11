### Author: Amanda Northrop
### based on code written by Andrew Nyugen

#load the required packages
library(VennDiagram)
library(xtable)
library(car)
library(latticeExtra)
library(lmodel2)
library(ggplot2)
library(minpack.lm)


#set path for working directory and set workind directory
path<-##INSERT WORKING DIRECTORY HERE
setwd(path)

#read in protein level data
ARD1_prots<-read.csv("Jan312019_QE+_0110-0117-ARD1-fraction-combined_protein.csv",header=TRUE)
ARY2_prots<-read.csv("Jan312019_QE+_0119-0126-ARY2-fraction-combined_protein.csv",header=TRUE)
ARY13_prots<-read.csv("Jan312019_QE+_0159-0166-ARY13-fraction-combined_protein.csv",header=TRUE)
P45_prots<-read.csv("Jan312019_QE+_0129-0136-P45-fraction-combined_protein.csv",header=TRUE)
P53_prots<-read.csv("Jan312019_QE+_0149-0156-P53-fraction-combined_protein.csv",header=TRUE)

#create a list of dataframes, one for each colony
prots_list<-list(ARD1=ARD1_prots,ARY13=ARY13_prots,ARY2=ARY2_prots,P45=P45_prots,P53=P53_prots)


#write a function that subsets the columns that include abundance ratio data for each protein accession
parse_data<-function(prot_data){
  temp_dat<-subset(prot_data,select = c(Abundance.Ratio...127N.....126., Abundance.Ratio...127C.....126.,
                                        Abundance.Ratio...128N.....126., Abundance.Ratio...128C.....126.,
                                        Abundance.Ratio...129N.....126., Abundance.Ratio...129C.....126.,
                                        Abundance.Ratio...130N.....126., Abundance.Ratio...130C.....126.,
                                        Abundance.Ratio...131.....126.))
  rownames(temp_dat)<-prot_data$Accession #make the row names the accession numbers
  temp_dat<-cbind(rep(1,length(prot_data$Accession)),temp_dat) #add the 30.1 degree abundance ratios in 1st column (ab=1)
  colnames(temp_dat)<-c("30.1 C", "36.0","41.2 C", "43.9 C","46.3 C","48.2 C","50.3 C","55.1 C","61.2 C","65.2 C")
  temp_dat<-na.omit(temp_dat) #omit any rows with NA values in any column 
  return(temp_dat)
}

#apply the function to prots_list to parse data
prots_list<-lapply(prots_list,FUN = parse_data)

##################################################################################################
#####If normalizing data using normalization_to_GAPDH.R then start here after running that code...
##################################################################################################

#set the sampling temps
Tc<-c(30.1,36.0,41.2,43.9,46.3,48.2,50.3,55.1,61.2,65.2)

###Visualize data
####Select 6 random proteins from each colony and plot unfolding curves
#visualize the peptide abundance ratios - randomly sample 25 peptides and plot their unfolding curves
par(mfrow=c(5,6),mar=c(3,2,1,1))
plotvis<-function(datfram,main_name){
  ind<-sample(x = 1:dim(datfram)[1],size = 6,replace = FALSE)
  for(i in 1:6){
    plot(y = datfram[ind[i],],
         x = c(30.1,36.0,41.2,43.9,46.3,48.2,50.3,55.1,61.2,65.2),
         ylab="",
         ylim=c(0,1.5),
         type="p",
         main=main_name)
  }
}


plotvis(prots_list$ARD1,"ARD1")
plotvis(prots_list$ARY13,"ARY13")
plotvis(prots_list$ARY2,"ARY2")
plotvis(prots_list$P45,"P45")
plotvis(prots_list$P53,"P53")

###add columns to the data frames to hold parameter estimates and p-values
addcols<-function(data){ #write a function to add columns 
  data$slope<-NA
  data$slope_p<-NA
  data$Tm<-NA
  data$Tm_p<-NA
  data$min<-NA
  data$min_p<-NA
  return(data)
}

prots_list<-lapply(prots_list,addcols)#apply the function/add the columns


###################### Fit the model to the data and extract parameters ##############################

fit_extract<-function(prots_data){
  for(i in 1:dim(prots_data)[1]){
    unfolding<-as.numeric(prots_data[i,1:10])
    output<-try(nlsLM(unfolding ~ min+(1-min)/(1+exp((-slope*(Tm-Tc)))),start=list(slope=.75,Tm=45,min=.2), trace=FALSE,control=nls.control(warnOnly = TRUE, tol = 1e-05, maxiter=1000)))
    if(class(output) != "try-error"){
      prots_data$slope[i]<-summary(output)$coefficients[1] #pull the param estimates and p-values for each param
      prots_data$slope_p[i]<-summary(output)$coefficients[10]
      prots_data$Tm[i]<-summary(output)$coefficients[2]
      prots_data$Tm_p[i]<-summary(output)$coefficients[11]
      prots_data$min[i]<-summary(output)$coefficients[3]
      prots_data$min_p[i]<-summary(output)$coefficients[12]
    }
    else {
      prots_data$slope[i]<-NA #pull the param estimates and p-values for each param
      prots_data$slope_p[i]<-NA 
      prots_data$Tm[i]<-NA 
      prots_data$Tm_p[i]<-NA 
      prots_data$min[i]<-NA 
      prots_data$min_p[i]<-NA 
    }
  }
  return(prots_data)
}

prots_list_fitted<-lapply(prots_list,fit_extract)


#visualize the peptide abundance ratios - randomly sample 25 peptides and plot their unfolding curves
fud<-function(Tc,Tm,slope,min){
  min+(1-min)/(1+exp((-slope*(Tm-Tc))))
}


plotvis_fit<-function(datfram,main_name){
  ind<-sample(x = 1:dim(datfram)[1],size = 6,replace = FALSE)
  for(i in 1:6){
    plot(y = datfram[ind[i],1:10],
         x = c(30.1,36.0,41.2,43.9,46.3,48.2,50.3,55.1,61.2,65.2),
         ylab="",
         ylim=c(0,1.5),
         type="p",
         main=main_name)
    lines(x=c(30.1,36.0,41.2,43.9,46.3,48.2,50.3,55.1,61.2,65.2),
          y=fud(Tc=Tc,Tm = datfram$Tm[ind[i]],
                slope = datfram$slope[ind[i]],min = datfram$min[ind[i]]))
  }
}

par(mfrow=c(5,6),mar=c(3,2,1,1))
plotvis_fit(prots_list_fitted$ARD1,"ARD1")
plotvis_fit(prots_list_fitted$ARY13,"ARY13")
plotvis_fit(prots_list_fitted$ARY2,"ARY2")
plotvis_fit(prots_list_fitted$P45,"P45")
plotvis_fit(prots_list_fitted$P53,"P53")



#filter out the proteins that didn't fit the unfolding curve
prots_list_fitted<-lapply(prots_list_fitted,na.omit)

#write a function that flags any proteins with one or more insignificant parameters with an NA and proteins with all significant parameters with "sig"

all_nonsig<-function(data){
  data$all_p=NA
  for(i in 1:dim(data)[1]){
    templog<-data[i,c(12,14,16)]>=0.05
    if(length(which(templog==TRUE))==0){
      data$all_p[i]="sig"
    }
  }
  return(data)
}


prots_list_fitted<-lapply(prots_list_fitted,all_nonsig)

#create dataframes for the proteins for which all parameters have significant fits
prots_list_sig<-lapply(prots_list_fitted,na.omit)
lapply(prots_list_sig,dim)

#create dataframes for the proteins without significant fits (for all parameters)
remove_sig<-function(prots_all){#write function that keeps non-sig rows
  prots_all<-prots_all[-which(prots_all$all_p=="sig"),]
  return(prots_all)
}

prots_list_nonsig<-lapply(prots_list,remove_sig)
lapply(prots_list_nonsig,dim)
```

