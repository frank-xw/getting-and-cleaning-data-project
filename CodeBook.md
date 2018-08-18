# Code Book of Getting and Cleaning Data Project - Johns Hopkins Coursera

## Identifier

* subject - The ID of each subject participating in the experiment, range from 1 to 30

* activity - Each subject performed six activities
    
    1.  walking: subject was during the experiment
    2.  walking_upstairs: subject was walking upstairs during the experiment
    3.  walking_downstairs: subject was walking downstairs during the experiment
    4.  sitting: subject was sitting during the experiment
    5.  standing: subject was standing during the experiment
    6.  laying: subject was laying down during the experiment

## Measurement

Include time domain signals and frequency domain signals

### Time Domain Signals
(prefix with timeDomain keyword)

* Come from the **accelerometer** and **gyrosope** 3-axial raw signals.  
* Then seperated into **body** and **gravity** accerleration signals.  
* Finally caculated by two method, **mean** and **standard deviation**.  

    timeDomainBodyAccelerometerMeanX  
    timeDomainBodyAccelerometerMeanY  
    timeDomainBodyAccelerometerMeanZ  

    timeDomainBodyAccelerometerStandardDeviationX  
    timeDomainBodyAccelerometerStandardDeviationY  
    timeDomainBodyAccelerometerStandardDeviationZ  

    timeDomainGravityAccelerometerMeanX  
    timeDomainGravityAccelerometerMeanY  
    timeDomainGravityAccelerometerMeanZ  

    timeDomainGravityAccelerometerStandardDeviationX  
    timeDomainGravityAccelerometerStandardDeviationY  
    timeDomainGravityAccelerometerStandardDeviationZ  

* **Jerk** signals were obtained by the body **linear acceleration** and **angular velocity**  
* Also the **magnitude** of these three-dimensional signals were calculated using the Euclidean norm.  

    timeDomainBodyAccelerometerJerkMeanX  
    timeDomainBodyAccelerometerJerkMeanY  
    timeDomainBodyAccelerometerJerkMeanZ  

    timeDomainBodyAccelerometerJerkStandardDeviationX
    timeDomainBodyAccelerometerJerkStandardDeviationY
    timeDomainBodyAccelerometerJerkStandardDeviationZ

    timeDomainBodyGyroscopeMeanX  
    timeDomainBodyGyroscopeMeanY  
    timeDomainBodyGyroscopeMeanZ  
   
    timeDomainBodyGyroscopeStandardDeviationX  
    timeDomainBodyGyroscopeStandardDeviationY  
    timeDomainBodyGyroscopeStandardDeviationZ  
   
    timeDomainBodyGyroscopeJerkMeanX  
    timeDomainBodyGyroscopeJerkMeanY  
    timeDomainBodyGyroscopeJerkMeanZ  
   
    timeDomainBodyGyroscopeJerkStandardDeviationX  
    timeDomainBodyGyroscopeJerkStandardDeviationY  
    timeDomainBodyGyroscopeJerkStandardDeviationZ
   
    timeDomainBodyAccelerometerMagnitudeMean
    timeDomainBodyAccelerometerMagnitudeStandardDeviation
   
    timeDomainGravityAccelerometerMagnitudeMean  
    timeDomainGravityAccelerometerMagnitudeStandardDeviation  

    timeDomainBodyAccelerometerJerkMagnitudeMean  
    timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation
   
    timeDomainBodyGyroscopeMagnitudeMean   
    timeDomainBodyGyroscopeMagnitudeStandardDeviation  
   
    timeDomainBodyGyroscopeJerkMagnitudeMean  
    timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation
   
### Frequency Domain Signals
(prefix with frequencyDomain keyword)

* A Fast Fourier Transform (FFT) was applied to produce frequency domain signals.

	frequencyDomainBodyAccelerometerMeanX                         
	frequencyDomainBodyAccelerometerMeanY                         
	frequencyDomainBodyAccelerometerMeanZ                         

	frequencyDomainBodyAccelerometerStandardDeviationX            
	frequencyDomainBodyAccelerometerStandardDeviationY            
	frequencyDomainBodyAccelerometerStandardDeviationZ            

	frequencyDomainBodyAccelerometerMeanFrequencyX                
	frequencyDomainBodyAccelerometerMeanFrequencyY                
	frequencyDomainBodyAccelerometerMeanFrequencyZ                
	
	frequencyDomainBodyAccelerometerJerkMeanX                     
	frequencyDomainBodyAccelerometerJerkMeanY                     
	frequencyDomainBodyAccelerometerJerkMeanZ                     
	
	frequencyDomainBodyAccelerometerJerkStandardDeviationX        
	frequencyDomainBodyAccelerometerJerkStandardDeviationY        
	frequencyDomainBodyAccelerometerJerkStandardDeviationZ        

	frequencyDomainBodyAccelerometerJerkMeanFrequencyX            
	frequencyDomainBodyAccelerometerJerkMeanFrequencyY            
	frequencyDomainBodyAccelerometerJerkMeanFrequencyZ            

	frequencyDomainBodyGyroscopeMeanX                             
	frequencyDomainBodyGyroscopeMeanY                             
	frequencyDomainBodyGyroscopeMeanZ                             
	
	frequencyDomainBodyGyroscopeStandardDeviationX                
	frequencyDomainBodyGyroscopeStandardDeviationY                
	frequencyDomainBodyGyroscopeStandardDeviationZ                

	frequencyDomainBodyGyroscopeMeanFrequencyX                    
	frequencyDomainBodyGyroscopeMeanFrequencyY                    
	frequencyDomainBodyGyroscopeMeanFrequencyZ                    

* **Average**, **standard deviation**, and **weighted average** of the frequency components calculated separately

	frequencyDomainBodyAccelerometerMagnitudeMean                 
	frequencyDomainBodyAccelerometerMagnitudeStandardDeviation
	frequencyDomainBodyAccelerometerMagnitudeMeanFrequency     	
	       
	frequencyDomainBodyAccelerometerJerkMagnitudeMean             
	frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation
	frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency
	    
	frequencyDomainBodyGyroscopeMagnitudeMean                     
	frequencyDomainBodyGyroscopeMagnitudeStandardDeviation        
	frequencyDomainBodyGyroscopeMagnitudeMeanFrequency
	            
	frequencyDomainBodyGyroscopeJerkMagnitudeMean                 
	frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation    
	frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency
   
   